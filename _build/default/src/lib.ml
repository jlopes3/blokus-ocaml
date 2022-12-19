open Core
open Constants

let get_first (pair: 'a * 'b): 'a =
  let (r1, _) = pair in
  r1;;
  

let get_second (pair: 'a * 'b): 'b =
  let (_, r2) = pair in
    r2;;


let get_trio_first (trio: 'a * 'b * 'c): 'a =
  let (r1, _, _) = trio in
    r1;;

let get_trio_second (trio: 'a * 'b * 'c): 'b =
  let (_, r2, _) = trio in
    r2;;

let get_trio_third (trio: 'a * 'b * 'c): 'c =
  let (_, _, r3) = trio in
    r3;;


(* All for converting a board to a string *)
let remove_first_char (inputString: string): string =
  String.sub inputString ~pos:(1) ~len:(String.length inputString - 1);;

let add_to_string (input: string) (input2: string): string = input ^ "  " ^ input2;;

let remove_double_digits (index: int) (a: string): string =
  if (index > 9) then remove_first_char a
  else a;;

let row_to_string (row: string list) : string =
  "    " ^ (List.fold ~f:(add_to_string) ~init:("") row) ^ "\n";;

let board_to_string_stdio (board: string list list) =
  "\n       A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T\n\n" ^ List.fold ~f:(^) ~init:("") (List.mapi ~f:(fun index -> fun a -> ((Int.to_string (index + 1)) ^ a)) (List.mapi ~f:(fun index -> fun a -> remove_double_digits (index + 1) a) (List.map ~f:(row_to_string) board)));;


let board_to_string_file (board_or_piece: string list list) = 
  List.fold ~f:(^) ~init:("") (List.map ~f:(row_to_string) board_or_piece);;

let pieces_to_string_file (pieces: string list list) = 
  List.fold ~f:(^) ~init:("") (List.map ~f:(row_to_string) pieces);;


let ai_string (num_ai: string) : string =
  if String.equal num_ai "0" then "      \n"
  else if String.equal num_ai "1" then "      Y\n"
  else if String.equal num_ai "2" then "      B Y\n"
  else if String.equal num_ai "3" then "      G B Y\n"
  else "      ERROR\n";;




(* Make a string from the file contents *)
let make_string_from_file (file : string) : string = file |> In_channel.read_all;;

let make_list_of_lines (curr: string) : string list = curr |> String.split_on_chars ~on: (['\t'; '\r'; '\n'; '\x0C']);;

let empty_string_bool (curr: string) : bool =
  if ((String.length curr) = 0) then false
  else true;;

let make_list_of_chars (curr: string) : string list = curr |> String.split_on_chars ~on: (['\t'; '\r'; '\n'; ' '; '\x0C']) |> List.filter ~f:(empty_string_bool);;


let rec subset_helper (data: 'a list) (final: int) (index: int) : 'a list =
  if (index = List.length data) then []
  else if ((index) = final + 1) then []
  else List.nth_exn data index :: subset_helper data final (index + 1);;

  (* inclusive *)
let subset (data: 'a list) (start: int) (final: int) : 'a list =
  subset_helper data final start;;





 
(* Processes information from the command line
  First command line argument is the executable
  Second command line arugment is the number of the piece you want to place
  Third command line argument is the coordinate of the piece you want to play (coordinate of the left most part in the top row of the piece)
  First two parts of return value are the parts from load_gamee\
  Third part is a string list in this format ["Piece#";"PieceRepresentation";"A1"]
   
*)
let process_command_line (data: string list list * string list list) (command_args: string list): (string list list * string list list * string list) =
  (get_first data, get_second data, [(List.nth_exn command_args 1);(List.nth_exn command_args 2);(List.nth_exn command_args 3)]);;


let rec remove_piece_helper (data: string list) (to_remove: string) (curr: int) : string list =
  if (List.length data = curr) then []
  else if (String.equal (List.nth_exn data curr) to_remove) then remove_piece_helper data to_remove (curr + 1)
  else (List.nth_exn data curr) ::  remove_piece_helper data to_remove (curr + 1);;


let remove_piece (data: string list) (to_remove: string): string list =
  if (List.length (remove_piece_helper data to_remove 0)) = 0 then ["0"; "0"]
  else (remove_piece_helper data to_remove 0);;   


let next_color (color: string) : string =
  if (String.equal color "R") then "Y"
  else if (String.equal color "Y") then "B"
  else if (String.equal color "B") then "G"
  else if (String.equal color "G") then "R"
  else "ERROR!";;


let update_pieces (color: string) (data: string list list) (to_remove: string) : string list list =
  if (String.equal color "R") then (remove_piece (List.nth_exn data 0) to_remove)  :: (List.nth_exn data 1) :: (List.nth_exn data 2) :: (List.nth_exn data 3) :: (List.nth_exn data 4) :: [[(next_color color)]]
  else if (String.equal color "Y") then (List.nth_exn data 0) :: (remove_piece (List.nth_exn data 1) to_remove) :: (List.nth_exn data 2) :: (List.nth_exn data 3) :: (List.nth_exn data 4) :: [[(next_color color)]]
  else if (String.equal color "B") then (List.nth_exn data 0) :: (List.nth_exn data 1) :: (remove_piece (List.nth_exn data 2) to_remove) :: (List.nth_exn data 3) :: (List.nth_exn data 4) :: [[(next_color color)]]
  else if (String.equal color "G") then (List.nth_exn data 0) :: (List.nth_exn data 1) :: (List.nth_exn data 2) :: (remove_piece (List.nth_exn data 3) to_remove) :: (List.nth_exn data 4) :: [[(next_color color)]]
  else [["\n     ERROR!\n"]];;


let rec combine_board_piece_helper (piece_row: string list) (board_row: string list) (index: int) (color: string) : string list =
  if (index = List.length piece_row) then []
  else if (String.equal (List.nth_exn piece_row index) "X") then (List.nth_exn board_row index) :: (combine_board_piece_helper piece_row board_row (index + 1) color)
  else color :: (combine_board_piece_helper piece_row board_row (index + 1) color);;

let combine_board_piece (piece_row: string list) (board_row: string list) (color: string) : string list =
  combine_board_piece_helper piece_row board_row 0 color;;


let coord_col (coord: string) : int =
  (Char.to_int coord.[0]) - 65;;

let coord_row (coord: string) : int =
  (int_of_string (remove_first_char coord)) - 1;;

let insert_piece_col (piece_row: string list) (board_row: string list) (coord: string) (color: string) : string list =
  (subset board_row 0 (coord_col coord - 1)) @ (combine_board_piece piece_row (subset board_row ((coord_col coord)) (coord_col coord + (List.length piece_row) - 1)) color) @ subset board_row (coord_col coord + (List.length piece_row)) 19;;

let rec insert_piece (piece: string list list) (board: string list list) (coord: string) (counter: int) (curr: int) (color: string): string list list =
  if (List.length piece = counter) then (subset board (coord_row coord + counter) 19)
  else (subset board curr (coord_row coord + counter - 1)) @ [(insert_piece_col (List.nth_exn piece counter) (List.nth_exn board (coord_row coord + counter)) coord color)]  @ insert_piece piece board coord (counter + 1) (coord_row coord + counter + 1) color;;

let put_piece_on_board (piece: string list list) (board: string list list) (coord: string) (color: string): string list list =
  insert_piece piece board coord 0 0 color;;

let rec trim_section (sub_board: string list list) (piece: string list list) (coord: string) (index: int) : string list list =
  if (index = List.length piece) then []
  else if (index = List.length sub_board) then []
  else subset (List.nth_exn sub_board (index)) (coord_col coord) ((-1) + (coord_col coord) + List.length (List.nth_exn piece 0)) :: trim_section sub_board piece coord (index + 1);;


let board_section_to_place (piece: string list list) (board: string list list) (coord: string) : string list list =
  trim_section (subset board (coord_row coord) ((-1) + (coord_row coord) + List.length piece)) piece coord 0;;

let rec test_valid_placement_helper (sub_board: string list list) (piece: string list list) (index: int) (color: string) (same: bool): bool =
  if (List.length sub_board) = 0 then true
  else
  let col = index % (List.length (List.nth_exn sub_board 0)) in
    let row = index / (List.length (List.nth_exn sub_board 0)) in
      if index = ((List.length (List.nth_exn sub_board 0)) * (List.length sub_board)) then true && same
      else if String.equal (List.nth_exn (List.nth_exn sub_board row) col) "-" then test_valid_placement_helper sub_board piece (index + 1) color same
      else if String.equal (List.nth_exn (List.nth_exn piece row) col) "X" then test_valid_placement_helper sub_board piece (index + 1) color same
      else if String.equal (List.nth_exn (List.nth_exn sub_board row) col) color then 
        if same then false
        else test_valid_placement_helper sub_board piece (index + 1) color true
      else false;;



let test_valid_placement (sub_board: string list list) (piece: string list list) (color: string) : bool =
  test_valid_placement_helper sub_board piece 0 color false;;


let try_put_piece_on_board (piece: string list list) (board: string list list) (coord: string) (color: string): bool =
   if (coord_col coord < 0) then false
   else if (coord_row coord < 0) then false
   else if ((coord_col coord) + (List.length (List.nth_exn piece 0)) - 1 > 19) then false
   else if ((coord_row coord) + (List.length piece) - 1 > 19) then false
   else test_valid_placement (board_section_to_place piece board coord) piece color;;

let col_row_to_coord (col: int) (row: int) : string =
  (String.make 1 (char_of_int (col + 65))) ^ (string_of_int (row + 1));;

let rec get_pieces_test_helper (curr: int) (hand: string list) : string list list list list =
  if (curr = List.length piecesStrings) then []
  else if (curr = List.length hand) then []
  else List.nth_exn pieces (int_of_string (List.nth_exn hand curr)) :: get_pieces_test_helper (curr + 1) hand;;

let get_pieces_test  (color: string) (data: string list list) : string list list list list =
  if (String.equal color "R") then get_pieces_test_helper 0 (List.nth_exn data 0)
  else if (String.equal color "Y") then get_pieces_test_helper 0 (List.nth_exn data 1)
  else if (String.equal color "B") then get_pieces_test_helper 0 (List.nth_exn data 2)
  else if (String.equal color "G") then get_pieces_test_helper 0 (List.nth_exn data 3)
  else [[[["\n     ERROR!\n"]]]];;

let rec test_piece_rep_possible_move_helper (board: string list list) (piece: string list list) (index: int) (color: string): bool =
  let col = index % (List.length (List.nth_exn board 0)) in
    let row = index / (List.length (List.nth_exn board 0)) in
      if index = ((List.length (List.nth_exn board 0)) * (List.length board)) then false
      else if try_put_piece_on_board piece board (col_row_to_coord col row) color then true
      else test_piece_rep_possible_move_helper board piece (index + 1) color;;

let test_piece_rep_possible_move (board: string list list) (piece: string list list) (color: string) : bool =
  test_piece_rep_possible_move_helper board piece 0 color;;

let rec test_piece_possible_move_helper (board: string list list) (piece: string list list list) (color: string) (counter: int) : bool =
  if counter = (List.length piece) then false
  else 
    test_piece_rep_possible_move board (List.nth_exn piece counter) color || test_piece_possible_move_helper board piece color (counter + 1);;

let test_piece_possible_move (board: string list list) (piece: string list list list) (color: string) : bool =
  test_piece_possible_move_helper board piece color 0;;

let rec test_all_possible_moves_helper (board: string list list) (pieces: string list list list list) (color: string) (counter: int) : bool =
  if counter = (List.length pieces) then false
  else test_piece_possible_move board (List.nth_exn pieces counter) color || test_all_possible_moves_helper board pieces color (counter + 1);;

let test_all_possible_moves (board: string list list) (color: string) (data: string list list) : bool =
  test_all_possible_moves_helper board (get_pieces_test color data) color 0;;



let rec player_score_helper (hand: string list) (curr: int) : int =
  if (curr = List.length piecesStrings) then 0
  else if (curr = List.length hand) then 0
  else (List.nth_exn piecesScore (int_of_string (List.nth_exn hand curr))) + (player_score_helper hand (curr + 1));;

let player_score (hand: string list) : string =
  string_of_int (player_score_helper hand 0);;


let skip_player (color: string) (data: string list list) : string list list =
  if (String.equal color "R") then ["0"; player_score (List.nth_exn data 0)]  :: (List.nth_exn data 1) :: (List.nth_exn data 2) :: (List.nth_exn data 3) :: (List.nth_exn data 4) :: [[(next_color color)]]
  else if (String.equal color "Y") then (List.nth_exn data 0) :: ["0"; player_score (List.nth_exn data 1)] :: (List.nth_exn data 2) :: (List.nth_exn data 3) :: (List.nth_exn data 4) :: [[(next_color color)]]
  else if (String.equal color "B") then (List.nth_exn data 0) :: (List.nth_exn data 1) :: ["0"; player_score (List.nth_exn data 2)] :: (List.nth_exn data 3) :: (List.nth_exn data 4) :: [[(next_color color)]]
  else if (String.equal color "G") then (List.nth_exn data 0) :: (List.nth_exn data 1) :: (List.nth_exn data 2) :: ["0"; player_score (List.nth_exn data 3)] :: (List.nth_exn data 4) :: [[(next_color color)]]
  else [["\n     ERROR!\n"]];;


let skip_turn (pair: (string list list * string list list)): (string list list * string list list) = 
  ((skip_player ((List.nth_exn (List.nth_exn (get_first pair) 5) 0)) (get_first pair)), get_second pair);;


let game_over_data (data: string list list): string list list =
  data @ [["GAME OVER!"]];;

let game_over (loaded: (string list list * string list list)): (string list list * string list list) =
  (game_over_data (get_first loaded), get_second loaded);;

let check_for_0  (color: string) (data: string list list) : bool =
  if (String.equal color "R") then String.equal "0" (List.nth_exn(List.nth_exn data 0) 0)
  else if (String.equal color "Y") then String.equal "0" (List.nth_exn(List.nth_exn data 1) 0)
  else if (String.equal color "B") then String.equal "0" (List.nth_exn(List.nth_exn data 2) 0)
  else if (String.equal color "G") then String.equal "0" (List.nth_exn(List.nth_exn data 3) 0)
  else true;;

let check_next_player_done (loaded: (string list list * string list list)): bool =
  let data = get_first loaded in
    let color = (List.nth_exn (List.nth_exn data 5) 0) in
      check_for_0 color data;;

let check_game_over (loaded: (string list list * string list list)): bool =
  check_for_0 "R" (get_first loaded) && check_for_0 "Y" (get_first loaded) && check_for_0 "B" (get_first loaded) && check_for_0 "G" (get_first loaded);;



let bool_or (bool1: bool) (bool2: bool): bool =
  if bool1 then true
  else if bool2 then true
  else false;;
  
let check_ai (data: string list list) : bool =
  let next_player = List.nth_exn (List.nth_exn data 5) 0 in
    List.fold ~f:(bool_or) ~init:(false) (List.map ~f:(String.equal next_player) (List.nth_exn data 4));;


let rec iota1 (n: int): string list =
  if n = 0 then []
  else if n = 1 then ["1"]
  else (string_of_int n) :: iota1 (n - 1);;

let rec list_of_same (item: int) (n: int): string list =
  if n = 0 then []
  else if n = 1 then [string_of_int item]
  else string_of_int item :: list_of_same item (n - 1);;

let get_piece_reps (pieceNumber: string) : (string * string) list =
  List.zip_exn (list_of_same (int_of_string pieceNumber) ((List.length (List.nth_exn pieces (int_of_string pieceNumber))))) (List.rev (iota1 (List.length (List.nth_exn pieces (int_of_string pieceNumber)))));;


let rec get_piece_reps_helper (pieces: string list) (index: int) : (string * string) list =
  if (index = List.length pieces) then []
  else get_piece_reps (List.nth_exn pieces index) @ get_piece_reps_helper pieces (index + 1);;

let get_pieces_reps (pieces: string list) : (string * string) list =
  get_piece_reps_helper pieces 0;;



let string_list_of_pieces (color: string) (data: string list list) : string list =
  if (String.equal color "R") then (List.nth_exn data 0)
  else if (String.equal color "Y") then (List.nth_exn data 1)
  else if (String.equal color "B") then (List.nth_exn data 2)
  else if (String.equal color "G") then (List.nth_exn data 3)
  else ["\n     ERROR!\n"];;


let check_possible_rep_valid (piece_and_rep: (string * string)) (loaded: (string list list * string list list)) : bool =
  let piece_num = int_of_string (get_first piece_and_rep) in
    let rep_num = int_of_string (get_second piece_and_rep) in
      let board = get_second loaded in
        let data = get_first loaded in
          test_piece_rep_possible_move board (List.nth_exn (List.nth_exn pieces piece_num) (rep_num - 1)) (List.nth_exn (List.nth_exn data 5) 0);;

let row_col_to_coord (row: int) (col: int)  : string =
  (String.make 1 (char_of_int (col + 65))) ^ string_of_int (row + 1);;

let rec piece_rep_do_possible_move_coords_helper (board: string list list) (piece: string list list) (index: int) (color: string): string =
  let col = index % (List.length (List.nth_exn board 0)) in
  let row = index / (List.length (List.nth_exn board 0)) in
    if index = ((List.length (List.nth_exn board 0)) * (List.length board)) then "ERROR"
    else if try_put_piece_on_board piece board (col_row_to_coord col row) color then row_col_to_coord row col
    else piece_rep_do_possible_move_coords_helper board piece (index + 1) color;;

let piece_rep_do_possible_move_coords (board: string list list) (piece: string list list) (color: string) : string =
  piece_rep_do_possible_move_coords_helper board piece 0 color;;

(* Play the piece selected in the third element of the tuple
   Playing the piece entails playing the updating the 
      First element of the tuple: update piecees a player has and whose turn it is
      Second element: update the board with the new piece places
*)  
let play_piece (tuple: (string list list * string list list * string list)): (string list list * string list list) = 
  if (try_put_piece_on_board (List.nth_exn (List.nth_exn pieces (int_of_string (List.nth_exn (get_trio_third tuple) 0))) ((-1) + int_of_string (List.nth_exn (get_trio_third tuple) 1))) (get_trio_second tuple) (List.nth_exn (get_trio_third tuple) 2)   (List.nth_exn (List.nth_exn (get_trio_first tuple) 5) 0) ) then
    (update_pieces (List.nth_exn (List.nth_exn (get_trio_first tuple) 5) 0) (get_trio_first tuple) (List.nth_exn (get_trio_third tuple) 0), (put_piece_on_board (List.nth_exn (List.nth_exn pieces (int_of_string (List.nth_exn (get_trio_third tuple) 0))) ((-1) + int_of_string (List.nth_exn (get_trio_third tuple) 1))) (get_trio_second tuple) (List.nth_exn (get_trio_third tuple) 2)   (List.nth_exn (List.nth_exn (get_trio_first tuple) 5) 0) ))
  else (get_trio_first tuple, get_trio_second tuple);;



let random_to_front (info: 'a list) : 'a list =
  let random_num = 1 + Random.int (-1 + List.length info) in
    match List.split_n info random_num with
    | (first, second) -> List.hd_exn (second) ::first @ (List.tl_exn second);;

let rec shuffle (info: 'a list) (times: int) : 'a list =
  if List.length info < 2 then info
  else if (times > 0) then shuffle (random_to_front info) (times - 1)
  else info;;


let rec do_random_move_helper (possible_reps: (string * string) list) (loaded: (string list list * string list list)) (index: int) :  (string list list * string list list) =
  if index = List.length possible_reps then loaded
  else if check_possible_rep_valid (List.nth_exn possible_reps index) loaded then play_piece (get_first loaded, get_second loaded, [get_first (List.nth_exn possible_reps index); get_second (List.nth_exn possible_reps index); piece_rep_do_possible_move_coords (get_second loaded) (List.nth_exn (List.nth_exn pieces ((int_of_string (get_first (List.nth_exn possible_reps index))))) ((int_of_string (get_second (List.nth_exn possible_reps index))) - 1)) (List.nth_exn (List.nth_exn (get_first loaded) 5) 0)])
  else do_random_move_helper possible_reps loaded (index + 1);;

let do_random_move (possible_reps: (string * string) list) (loaded: (string list list * string list list)) :  (string list list * string list list) =
  do_random_move_helper (shuffle possible_reps 100) loaded 0;;


let ai_move (loaded: (string list list * string list list)) : (string list list * string list list) =
  let data = get_first loaded in
    let possible_reps = get_pieces_reps (string_list_of_pieces (List.nth_exn (List.nth_exn data 5) 0) (data)) in
      do_random_move possible_reps loaded;;

let rec ai_move_try_multiple (loaded: (string list list * string list list)) : (string list list * string list list) =
  if check_ai (get_first (ai_move loaded)) then ai_move_try_multiple (ai_move loaded)
  else ai_move loaded;;

let not (bool1: bool) : bool =
  if bool1 then false
  else true;;

let rec skip_turn_try_multiple (loaded: (string list list * string list list)) : (string list list * string list list) =
  if check_next_player_done (skip_turn loaded) then skip_turn_try_multiple (skip_turn loaded)
  else skip_turn loaded;;

let check_next_player (loaded: (string list list * string list list)) : (string list list * string list list) =
  (*
  print_endline ("Check game over: " ^ string_of_bool(            check_game_over loaded         ));
  print_endline ("Check next player: " ^ string_of_bool(            (check_next_player_done loaded)       ));
  *)
  if check_game_over loaded then (game_over loaded)
  else if (check_next_player_done loaded) then (skip_turn_try_multiple loaded)
  else if (test_all_possible_moves (get_second loaded) (List.nth_exn (List.nth_exn (get_first loaded) 5) 0) (get_first loaded)) then 
    if (check_ai (get_first loaded)) then ai_move_try_multiple loaded
    else loaded
  else (skip_turn loaded);;

(*
let check_next_player (loaded: (string list list * string list list)) : (string list list * string list list) =
  (*
  print_endline ("Data: " ^ board_to_string_file (get_first loaded));
  print_endline ("Check game over: " ^ string_of_bool(            check_game_over loaded         ));
  print_endline ("Check next player done: " ^ string_of_bool(            check_next_player_done loaded        ));
  print_endline ("Test all possible moves: " ^ string_of_bool(            test_all_possible_moves (get_second loaded) (List.nth_exn (List.nth_exn (get_first loaded) 5) 0) (get_first loaded))        );
  print_endline ("Board: \n" ^ board_to_string_file (get_second loaded));
  print_endline ("Data: \n" ^ board_to_string_file (get_first loaded));
  print_endline ("Color: " ^ (List.nth_exn (List.nth_exn (get_first loaded) 5) 0) ^ "\n");
  *)
  if check_game_over loaded then (game_over loaded)
  else if (check_next_player_done loaded) then (skip_turn loaded)
  else if (test_all_possible_moves (get_second loaded) (List.nth_exn (List.nth_exn (get_first loaded) 5) 0) (get_first loaded)) then loaded
  else (skip_turn loaded);;
*)

let intro_string (color: string) : string =
  if (String.equal color "R") then "\n     It is red's turn!\n     Here are your pieces:\n"
  else if (String.equal color "Y") then "\n     It is yellow's turn!\n     Here are your pieces:\n"
  else if (String.equal color "B") then "\n     It is blue's turn!\n     Here are your pieces:\n"
  else if (String.equal color "G") then "\n     It is green's turn!\n     Here are your pieces:\n"
  else "\n     ERROR!\n";;

let rec get_pieces_helper (curr: int) (hand: string list) : string list =
  if (curr = List.length piecesStrings) then []
  else if (curr = List.length hand) then []
  else List.nth_exn piecesStrings (int_of_string (List.nth_exn hand curr)) :: get_pieces_helper (curr + 1) hand;;

let get_pieces  (color: string) (data: string list list) : string list =
  if (String.equal color "R") then get_pieces_helper 0 (List.nth_exn data 0)
  else if (String.equal color "Y") then get_pieces_helper 0 (List.nth_exn data 1)
  else if (String.equal color "B") then get_pieces_helper 0 (List.nth_exn data 2)
  else if (String.equal color "G") then get_pieces_helper 0 (List.nth_exn data 3)
  else ["\n     ERROR!\n"];;


let combine_strings_with_newline (first: string) (second: string) : string =
  first ^ "\n" ^ second;;

let player_string (data: string list list): string =
  intro_string (List.nth_exn (List.nth_exn data 5) 0) ^ (List.fold ~f:(combine_strings_with_newline) ~init:("") (get_pieces (List.nth_exn (List.nth_exn data 5) 0) data));;  


let score_string (data: string list list) : string =
  "\nRed score: " ^(List.nth_exn (List.nth_exn data 0) 1) ^ "\n" ^ "Yellow score: " ^(List.nth_exn (List.nth_exn data 1) 1) ^ "\n" ^ "Blue score: " ^(List.nth_exn (List.nth_exn data 2) 1) ^ "\n" ^ "Green score: " ^(List.nth_exn (List.nth_exn data 3) 1) ^ "\n";;

(* Print the current state of the game in state.txt to stdio
  This first prints the board, then whose turn it is, then the pieces of the current playeer
*)  
let print_state (loaded: (string list list * string list list)) =
  if (check_game_over loaded) then print_endline (board_to_string_stdio (get_second loaded) ^ "\nGame is over! Lowest score wins!\n" ^ score_string (get_first loaded))
  else print_endline (board_to_string_stdio (get_second loaded) ^ player_string (get_first loaded));;