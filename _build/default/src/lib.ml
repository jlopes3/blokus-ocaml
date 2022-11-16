open Core


(* All for converting a board to a string *)
let remove_first_char (inputString: string): string =
  String.sub inputString ~pos:(1) ~len:(String.length inputString - 1);;

let add_to_string (input: string) (input2: string): string = input ^ "  " ^ input2;;

let remove_double_digits (index: int) (a: string): string =
  if (index > 9) then remove_first_char a
  else a;;

let row_to_string (row: string list) : string =
  "    " ^ (List.fold ~f:(add_to_string) ~init:("") row) ^ "\n";;

let board_to_string (board: string list list) =
  "\n       A  B  C  D  E  F  G  I  J  K  L  M  N  O  P  Q  R  S  T  U\n\n" ^ List.fold ~f:(^) ~init:("") (List.mapi ~f:(fun index -> fun a -> ((Int.to_string (index + 1)) ^ a)) (List.mapi ~f:(fun index -> fun a -> remove_double_digits (index + 1) a) (List.map ~f:(row_to_string) board))) ^ "\n It is blue players turn!\n Here are your pieces:\n Piece 1:\n B\n\n Piece 2:\n BB    B\n       B\n Piece 3:\n  B    B    BB    BB\n BB    BB   B      B\n";;


(* Check if a board is valid *)
(* Colors are represented using RGBY, newest placed piece is N *)

(*
let check_neighbors (board: string list list) (color: string) (x: int) (y: int) : bool =
  
  let rec new_board_valid_helper (board: string list list) (color: string) (index: int) : bool =
    if (index > 195) then true
    else if (String.equal (List.nth_exn (index % 14) (List.nth_exn (index / 14) board)) "N") then check_neighbors board color index && new_board_valid_helper board color (index + 1)
    else new_board_valid_helper board color (index + 1);;
    
    
    let new_board_valid (board: string list list) (color: string) : bool =
      new_board_valid_helper board color 0;;
      *)




let print_random =
  (*
  print_endline "XXXXXXXXXXXXXX\nXXXXXXXXXXXXXX\nXXXXXXXXXXXXXX\nXXXXXXXXXXXXXX\nXXXXXXXXXXXXXX\nXXXXXXXXXXXXXX\nXXXXXXXXXXXXXX\nXXXXXXXXXXXXXX\nXXXXXXXXXXXXXX\nXXXXXXXXXXXXXX\nXXXXXXXXXXXXXX\nXXXXXXXXXXXXXX\nXXXXXXXXXXXXXX\nXXXXXXXXXXXXXX\n";;
  print_endline "X X X X X X X X X X X X X X\nX X X X X X X X X X X X X X\nX X X X X X X X X X X X X X\nX X X X X X X X X X X X X X\nX X X X X X X X X X X X X X\nX X X X X X X X X X X X X X\nX X X X X X X X X X X X X X\nX X X X X X X X X X X X X X\nX X X X X X X X X X X X X X\nX X X X X X X X X X X X X X\nX X X X X X X X X X X X X X\nX X X X X X X X X X X X X X\nX X X X X X X X X X X X X X\nX X X X X X X X X X X X X X\nX X X X X X X X X X X X X X\nX X X X X X X X X X X X X X\nX X X X X X X X X X X X X X"
  *)
  print_endline (board_to_string [["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"R";"R";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"R";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"]]);;
