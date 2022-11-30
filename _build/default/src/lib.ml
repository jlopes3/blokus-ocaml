open Core



(* First piece in all representations 
   
  First representation: P 
*)
let piece1: string list list list = [[["P"]]];;


(* Second piece in all representations 
   
  First representation: P P    
  Second representation: P
                         P
*)
let piece2: string list list list = [[["P";"P"]];  [["P"];["P"]]];;

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


(* Fourth piece in all representations 
   
  Representation 1: P P P P   
  Representation 2: P
                    P
                    P
                    P
*)
let piece4: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;


(* Fifth piece in all representations 
   
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
let piece5: string list list list = [[["X";"X";"P"];["P";"P";"P"]];   [["P";"X"];["P";"X"];["P";"P"]];     [["P";"P";"P"];["P";"X";"X"]];        [["P";"P"];["X";"P"];["X";"P"]];         [["P";"X";"X"];["P";"P";"P"]];         [["X";"P"];["X";"P"];["P";"P"]];          [["P";"P";"P"];["X";"X";"P"]];           [["P";"P"];["P";"X"];["P";"X"]]    ];;


(* These pieces are just fillers for now *)

let piece6: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece7: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece8: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece9: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece10: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece11: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece12: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece13: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece14: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece15: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece16: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece17: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece18: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece19: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece20: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;
let piece21: string list list list = [[["P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"]]];;





(* There are 21 total pieces, more will be made *)
(* List of all pieces *)
let pieces: string list list list list = [piece1;piece2;piece3;piece4;piece5;piece6;piece7;piece8;piece9;piece10;piece11;piece12;piece13;piece14;piece15;piece16;piece17;piece18;piece19;piece20;piece21]






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


(*
let create_game = print_endline (board_to_string empty_board);;
*)
let create_game (num_ai: string) = 
  Out_channel.write_all "state.txt" ~data:((pieces_to_string_file [num_list; num_list; num_list; num_list]) ^ (ai_string num_ai) ^ "      R\n"^ (board_to_string_file empty_board));
  (* load_game |> print_state;         will uncomment when this is done *)
  print_endline "testing";;



(*
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
let load_game : (string list list, string list list)
*)

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

(*
(* Print the current state of the game in state.txt to stdio
  
  This first prints the board, then whose turn it is, then the pieces of the current playeer
*)  
let print_state :
*)
