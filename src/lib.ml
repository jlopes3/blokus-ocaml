open Core



(* First piece in all representations 
   
  First representation: P 
*)
let piece1: string list list list = [[["P"]]];;
let piece1String: string = "     Piece 1:\n     P\n";;


(* Second piece in all representations 
   
  First representation: P P    
  Second representation: P
                         P
*)
let piece2: string list list list = [[["P";"P"]];  [["P"];["P"]]];;
let piece2String: string ="     Piece 2:\n     PP  P\n         P\n";;

(* Third piece in all representations 
   
  Representation 1: X P
                    P P   
  Representation 2: P X
                    P P
  Representation 3: P P
                    P X 
  Representation 1: P P
                    X P 
*)
let piece3: string list list list = [[["X";"P"];["P";"P"]];  [["P";"X"];["P";"P"]];  [["P";"P"];["P";"X"]];  [["P";"P"];["X";"P"]]];;
let piece3String: string ="     Piece 3:\n      P P  PP PP\n     PP PP P   P\n";;

(* Fourth piece in all representations 
   
  Representation 1: P P P P   
  Representation 2: P
                    P
                    P
                    P
*)
let piece4: string list list list = [[["P";"P";"P"]];  [["P"];["P"];["P"]]];;
let piece4String: string ="     Piece 4:\n     PPP  P\n          P\n          P\n";;

(* Fourth piece in all representations 
   
  Representation 1: P P P P   
  Representation 2: P
                    P
                    P
                    P
*)
let piece5: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece5String: string ="     Piece 5:\n     PPPP  P\n           P\n           P\n           P\n";;

(* Sixth piece in all representations 
   
  Representation 1: X X P
                    P P P   
  Representation 2: P X
                    P X
                    P P
  Representation 3: P P P
                    P X X
  Representation 4: P P
                    X P
                    X P
  Representation 5: P X X
                    P P P   
  Representation 6: X P
                    X P
                    P P
  Representation 7: P P P
                    X X P
  Representation 8: P P
                    P X
                    P X
*)
let piece6: string list list list = [[["X";"X";"P"];["P";"P";"P"]];   [["P";"X"];["P";"X"];["P";"P"]];     [["P";"P";"P"];["P";"X";"X"]];        [["P";"P"];["X";"P"];["X";"P"]];         [["P";"X";"X"];["P";"P";"P"]];         [["X";"P"];["X";"P"];["P";"P"]];          [["P";"P";"P"];["X";"X";"P"]];           [["P";"P"];["P";"X"];["P";"X"]]    ];;
let piece6String: string ="     Piece 6:\n       P P  PPP PP P    P PPP PP\n     PPP P  P    P PPP  P   P P \n         PP      P     PP     P\n";;


(* Seventh piece in all representations 
  Representation 1: P P X
                    X P P   
  Representation 2: X P P
                    P P X 
  Representation 3: X P
                    P P
                    P X
  Representation 4: P X
                    P P
                    X P
*)
let piece7: string list list list = [[["P";"P";"X"];["X";"P";"P"]];  [["X";"P";"P"];["P";"P";"X"]];   [["X";"P"];["P";"P"];["P";"X"]];    [["P";"X"];["P";"P"];["X";"P"]] ];;
let piece7String: string ="     Piece 7:\n     PP  \n      PP ";;

(* These pieces are just fillers for now *)
let piece8: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece8String: string ="PP  P
    P";;
let piece9: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece9String: string ="PP  P
    P";;
let piece10: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece10String: string ="PP  P
    P";;
let piece11: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece11String: string ="PP  P
    P";;
let piece12: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece12String: string ="PP  P
    P";;
let piece13: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece13String: string ="PP  P
    P";;
let piece14: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece14String: string ="PP  P
    P";;
let piece15: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece15String: string ="PP  P
    P";;
let piece16: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece16String: string ="PP  P
    P";;
let piece17: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece17String: string ="PP  P
    P";;
let piece18: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece18String: string ="PP  P
    P";;
let piece19: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece19String: string ="PP  P
    P";;
let piece20: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece20String: string ="PP  P
    P";;
let piece21: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece21String: string ="PP  P
    P";;





(* There are 21 total pieces, more will be made *)
(* List of all pieces *)
let pieces: string list list list list = [piece1;piece1;piece2;piece3;piece4;piece5;piece6;piece7;piece8;piece9;piece10;piece11;piece12;piece13;piece14;piece15;piece16;piece17;piece18;piece19;piece20;piece21]

(* List of string representation of all pieces *)
let piecesStrings: string list = [piece1String;piece2String;piece3String;piece4String;piece5String;piece6String;piece7String;piece2String;piece2String;piece2String;piece2String;piece2String;piece2String;piece2String;piece2String;piece2String;piece2String;piece2String;piece2String;piece2String;piece2String];;





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
  "\n       A  B  C  D  E  F  G  I  J  K  L  M  N  O  P  Q  R  S  T  U\n\n" ^ List.fold ~f:(^) ~init:("") (List.mapi ~f:(fun index -> fun a -> ((Int.to_string (index + 1)) ^ a)) (List.mapi ~f:(fun index -> fun a -> remove_double_digits (index + 1) a) (List.map ~f:(row_to_string) board)));;


let board_to_string_file (board: string list list) = 
  List.fold ~f:(^) ~init:("") (List.map ~f:(row_to_string) board);;

let pieces_to_string_file (pieces: string list list) = 
  List.fold ~f:(^) ~init:("") (List.map ~f:(row_to_string) pieces);;








let empty_board: string list list = [["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"]];;

let num_list: string list = ["1"; "2"; "3"; "4"; "5"; "6"; "7"; "8"; "9"; "10"; "11"; "12"; "13"; "14"; "15"; "16"; "17"; "18"; "19"; "20"; "21"];;



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

let subset (data: 'a list) (start: int) (final: int) : 'a list =
  subset_helper data final start;;

let load_first_part =
  subset(make_string_from_file "state.txt"
  |> make_list_of_lines)
0 5
  |> List.map ~f:(make_list_of_chars);;

let load_second_part =
  subset(make_string_from_file "state.txt"
  |> make_list_of_lines)
6 25
  |> List.map ~f:(make_list_of_chars);;


(* Loads initial game information into first part of pair, Load board into second part of pair
   Information is from state.txt
   First Part Format: [<List of which number pieces Red has>;
                       <List of which number pieces Green has>;
                       <List of which number pieces Blue has>;
                       <List of which number pieces Yellow has>;
                       <List of which players are AI i.e. ["B";"Y"] if blue and yellow are AIs;
                       <List with whose turn it is i.e. ["R"] if it is red's turn]
  
    Second Part Form: List of 20 Lists of 20 length with string of 1 character where X is an open spacee and 
                      R, G, B, and Y and taken by the respective player
   
*)
let load_game =
  (load_first_part, load_second_part);;



(*  
(* Processes information from the command line
  First command line argument is the executable
  Second command line arugment is the number of the piece you want to place
  Third command line argument is the coordinate of the piece you want to play (coordinate of the left most part in the top row of the piece)
  First two parts of return value are the oarts from load_gamee
  Third part is a string list in this format ["#";"A1"]
   
*)
let process_command_line (string list list, string list list): (string list list, string list list, string list)
*)


(*
(* Play the piece selected in the third element of the tuple
   Playing the piece entails playing the updating the 
      First element of the tuple: update piecees a player has and whose turn it is
      Second element: update the board with the new piece places
*)  
let play_piece (tuple: (string list list, string list list, string list)): (string list list, string list list)
*)


(*
(* Write the new state of the game to state.txt
  
  The inner list eleements are separated by spaces
  Thee outer list elements are separated by newlines
  The first and second part are separated by a newline
  Here is the information that is in state.txt:
  First Part Format: [<List of which number pieces Red has>;
                       <List of which number pieces Green has>;
                       <List of which number pieces Blue has>;
                       <List of which number pieces Yellow has>;
                       <List of which players are AI i.e. ["B";"Y"] if blue and yellow are AIs;
                       <List with whose turn it is i.e. ["R"] if it is red's turn]
  
  Second Part Form: List of 20 Lists of 20 length with string of 1 character where X is an open spacee and 
                    R, G, B, and Y and taken by the respective player
*)  
let write_game (tuple:(string list list, string list list)) :
*)



let get_first (pair: 'a * 'b): 'a =
  let (r1, _) = pair in
    r1;;

let get_second (pair: 'a * 'b): 'b =
  let (_, r2) = pair in
    r2;;

let intro_string (color: string) : string =
  if (String.equal color "R") then "\n     It is red's turn!\n     Here are your pieces:\n"
  else if (String.equal color "Y") then "\n     It is yellow's turn!\n     Here are your pieces:\n"
  else if (String.equal color "B") then "\n     It is blue's turn!\n     Here are your pieces:\n"
  else if (String.equal color "G") then "\n     It is green's turn!\n     Here are your pieces:\n"
  else "\n     ERROR!\n";;

let combine_strings_with_newline (first: string) (second: string) : string =
  first ^ "\n" ^ second;;

let player_string (data: string list list): string =
  intro_string (List.nth_exn (List.nth_exn data 5) 0) ^ (List.fold ~f:(combine_strings_with_newline) ~init:("") piecesStrings);;
  

(* Print the current state of the game in state.txt to stdio
  This first prints the board, then whose turn it is, then the pieces of the current playeer
*)  
let print_state (loaded: (string list list * string list list)) =
  print_endline (board_to_string_stdio (get_second loaded) ^ player_string (get_first loaded));;






  let create_game (num_ai: string) = 
    Out_channel.write_all "state.txt" ~data:((pieces_to_string_file [num_list; num_list; num_list; num_list]) ^ (ai_string num_ai) ^ "      R\n"^ (board_to_string_file empty_board));
    load_game |> print_state;;