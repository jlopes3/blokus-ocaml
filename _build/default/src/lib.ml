open Core


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


(* First piece in all representations 
   
  First representation: P 
  let piece1: string list list list = [[["P"]]];;
  let piece1String: string = "     Piece 1:\n     P\n";;
  *)
  let piece1: string list list list = [[["P";"P"]];  [["P"];["P"]]];;
  let piece1String: string ="     Piece 2:\n     PP  P\n         P\n";;


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
let piece7String: string ="     Piece 7:\n     PP   PP  P P  \n      PP PP  PP PP \n             P   P \n";;


(* Eighth piece in all representations 
  Representation 1: P P
                    P P   
*)
let piece8: string list list list = [[["P";"P"];["P";"P"]]];;
let piece8String: string ="     Piece 8:\n     PP\n     PP\n";;

(* Ninth piece in all representations 
  Representation 1: P P P
                    X P X   
  Representation 2: X P X
                    P P P 
  Representation 3: X P
                    P P
                    X P
  Representation 4: P X
                    P P
                    P X
*)
let piece9: string list list list = [[["P";"P";"P"];["X";"P";"X"]];  [["X";"P";"X"];["P";"P";"P"]];   [["X";"P"];["P";"P"];["X";"P"]];    [["P";"X"];["P";"P"];["P";"X"]] ];;
let piece9String: string ="     Piece 9:\n     PPP  P   P P  \n      P  PPP PP PP \n              P P \n";;


(* Tenth piece in all representations 
   
  Representation 1: X P P
                    P P X   
                    X P X
  Representation 2: X P X
                    P P P
                    X X P
  Representation 3: X P X
                    X P P
                    P P X
  Representation 4: P X X
                    P P P
                    X P X
  Representation 5: P P X
                    X P P   
                    X P X
  Representation 6: X P X
                    P P P
                    P X X
  Representation 7: X P X
                    P P X
                    X P P
  Representation 8: X X P
                    P P P
                    X P X
*)
let piece10: string list list list = [[["X";"P";"P"];["P";"P";"X"];["X";"P";"X"]];     [["X";"P";"X"];["P";"P";"P"];["X";"X";"P"]];     [["X";"P";"X"];["X";"P";"P"];["P";"P";"X"]];     [["P";"X";"X"];["P";"P";"P"];["X";"P";"X"]];     [["P";"P";"X"];["X";"P";"P"];["X";"P";"X"]];     [["X";"P";"X"];["P";"P";"P"];["P";"X";"X"]];        [["X";"P";"X"];["P";"P";"X"];["X";"P";"P"]];        [["X";"X";"P"];["P";"P";"P"];["X";"P";"X"]]  ];;
let piece10String: string ="     Piece 10:\n      PP  P   P  P   PP   P   P    P\n     PP  PPP  PP PPP  PP PPP PP  PPP\n      P    P PP   P   P  P    PP  P \n";;


(* Eleventh piece in all representations 
   
  Representation 1: P P P P P  
  Representation 2: P
                    P
                    P
                    P
                    P
*)
let piece11: string list list list = [[["P";"P";"P";"P";"P"]];  [["P"];["P"];["P"];["P"];["P"]]];;
let piece11String: string ="     Piece 11:\n     PPPPP  P\n            P\n            P\n            P\n            P\n";;


(* Twelfth piece in all representations 
   
  Representation 1: P X
                    P X
                    P X  
                    P P
  Representation 2: P P P P
                    P X X X
  Representation 3: P P
                    X P 
                    X P
                    X P  
  Representation 4: X X X P
                    P P P P
  Representation 5: X P   
                    X P
                    X P
                    P P
  Representation 6: P P P P
                    X X X P
  Representation 7: P P
                    P X   
                    P X
                    P X
  Representation 8: P X X X
                    P P P P
*)
let piece12: string list list list = [[["P";"X"];["P";"X"];["P";"X"];["P";"P"]];  [["P";"P";"P";"P"];["P";"X";"X";"X"]];     [["P";"P"];["X";"P"];["X";"P"];["X";"P"]];       [["X";"X";"X";"P"];["P";"P";"P";"P"]];      [["X";"P"];["X";"P"];["X";"P"];["P";"P"]];       [["P";"P";"P";"P"];["X";"X";"X";"P"]];         [["P";"P"];["P";"X"];["P";"X"];["P";"X"]];                [["P";"X";"X";"X"];["P";"P";"P";"P"]]];;
let piece12String: string ="     Piece 12:\n     P  PPPP PP    P  P PPPP PP P\n     P  P     P PPPP  P    P P  PPPP\n     P        P       P      P      \n     PP       P      PP      P      \n";;


(* Thirteenth piece in all representations 
   
  Representation 1: X P
                    P P
                    P X  
                    P X
  Representation 2: P P P X
                    X X P P
  Representation 3: X P
                    X P 
                    P P
                    P X  
  Representation 4: P P X X
                    X P P P
  Representation 5: P X   
                    P P
                    X P
                    X P
  Representation 6: X P P P
                    P P X X
  Representation 7: P X
                    P X   
                    P P
                    X P
  Representation 8: X X P P
                    P P P X
*)
let piece13: string list list list = [[["X";"P"];["P";"P"];["P";"X"];["P";"X"]];  [["P";"P";"P";"X"];["X";"X";"P";"P"]];     [["X";"P"];["X";"P"];["P";"P"];["P";"X"]];       [["P";"P";"X";"X"];["X";"P";"P";"P"]];      [["P";"X"];["P";"P"];["X";"P"];["X";"P"]];       [["X";"P";"P";"P"];["P";"P";"X";"X"]];         [["P";"X"];["P";"X"];["P";"P"];["X";"P"]];                [["X";"X";"P";"P"];["P";"P";"P";"X"]]];;
let piece13String: string ="     Piece 13:\n      P PPP   P PP   P   PPP P    PP\n     PP   PP  P  PPP PP PP   P  PPP \n     P       PP       P      PP     \n     P       P        P       P      \n";;

(* Thirteenth piece in all representations 
   
  Representation 1: P P
                    P P
                    P X  
  Representation 2: P P P
                    X P P
  Representation 3: X P
                    P P 
                    P P
  Representation 4: P P X
                    P P P
  Representation 5: P P   
                    P P
                    X P
  Representation 6: P P P
                    P P X
  Representation 7: P X
                    P P   
                    P P
  Representation 8: X P P
                    P P P
*)
let piece14: string list list list = [ [["P";"P"];["P";"P"];["P";"X"]];     [["P";"P";"P"];["X";"P";"P"]];       [["X";"P"];["P";"P"];["P";"P"]];     [["P";"P";"X"];["P";"P";"P"]];        [["P";"P"];["P";"P"];["X";"P"]];     [["P";"P";"P"];["P";"P";"X"]];      [["P";"X"];["P";"P"];["P";"P"]];     [["X";"P";"P"];["P";"P";"P"]]];;
let piece14String: string ="     Piece 14:\n     PP PPP  P PP  PP PPP P   PP\n     PP  PP PP PPP PP PP  PP PPP\n     P      PP      P     PP    \n";;

(* Fifteenth piece in all representations 
   
  Representation 1: P P P
                    X P X   
                    X P X
  Representation 2: X X P
                    P P P
                    X X P
  Representation 3: X P X
                    X P X
                    P P P
  Representation 4: P X X
                    P P P
                    P X X
*)
let piece15: string list list list = [[["P";"P";"P"];["X";"P";"X"];["X";"P";"X"]];   [["X";"X";"P"];["P";"P";"P"];["X";"X";"P"]];        [["X";"P";"X"];["X";"P";"X"];["P";"P";"P"]];        [["P";"X";"X"];["P";"P";"P"];["P";"X";"X"]]  ];;
let piece15String: string ="     Piece 15:\n     PPP   P  P  P  \n      P  PPP  P  PPP\n      P    P PPP P\n";;

(* Sixteenth piece in all representations 
   
  Representation 1: P X P
                    P P P   
  Representation 2: P P
                    P X
                    P P
  Representation 3: P P P
                    P X P
  Representation 4: P P
                    X P
                    P P
*)
let piece16: string list list list = [[["P";"X";"P"];["P";"P";"P"]];   [["P";"P"];["P";"X"];["P";"P"]];        [["P";"P";"P"];["P";"X";"P"]];        [["P";"P"];["X";"P"];["P";"P"]]  ];;
let piece16String: string ="     Piece 16:\n     P P PP PPP PP \n     PPP P  P P  P \n         PP     PP \n";;

(* Seventeenth piece in all representations 
   
  Representation 1: P X X
                    P X X 
                    P P P
  Representation 2: P P P
                    P X X
                    P X X
  Representation 3: P P P
                    X X P
                    X X P
  Representation 4: X X P
                    X X P
                    P P P
*)
let piece17: string list list list = [[["P";"X";"X"];["P";"X";"X"];["P";"P";"P"]];   [["P";"P";"P"];["P";"X";"X"];["P";"X";"X"]];        [["P";"P";"P"];["X";"X";"P"];["X";"X";"P"]];        [["X";"X";"P"];["X";"X";"P"];["P";"P";"P"]]  ];;
let piece17String: string ="     Piece 17:\n     P   PPP PPP   P \n     P   P     P   P \n     PPP P     P PPP\n";;

(* Eighteenth piece in all representations 
   
  Representation 1: P X X
                    P P X 
                    X P P
  Representation 2: X P P
                    P P X
                    P X X
  Representation 3: P P X
                    X P P
                    X X P
  Representation 4: X X P
                    X P P
                    P P X
*)
let piece18: string list list list = [[["P";"X";"X"];["P";"P";"X"];["X";"P";"P"]];   [["X";"P";"P"];["P";"P";"X"];["P";"X";"X"]];        [["P";"P";"X"];["X";"P";"P"];["X";"X";"P"]];        [["X";"X";"P"];["X";"P";"P"];["P";"P";"X"]]  ];;
let piece18String: string ="     Piece 18:\n     P    PP PP    P \n     PP  PP   PP  PP \n      PP P     P PP \n";;

(* Ninteenth piece in all representations 
   
  Representation 1: X P X
                    P P P 
                    X P X
*)
let piece19: string list list list = [[["X";"P";"X"];["P";"P";"P"];["X";"P";"X"]]];;
let piece19String: string ="     Piece 19:\n      P \n     PPP\n      P \n";;

(* Twentieth piece in all representations 
   
  Representation 1: X P
                    P P
                    X P
                    X P 
  Representation 2: X X P X
                    P P P P
  Representation 3: P X
                    P X 
                    P P
                    P X
  Representation 4: P P P P
                    X P X X
  Representation 5: P X  
                    P P
                    P X
                    P X
  Representation 6: X P X X
                    P P P P
  Representation 7: X P
                    X P   
                    P P
                    X P
  Representation 8: P P P P
                    X X P X
*)
let piece20: string list list list = [[["X";"P"];["P";"P"];["X";"P"];["X";"P"]];        [["X";"X";"P";"X"];["P";"P";"P";"P"]];             [["P";"X"];["P";"X"];["P";"P"];["P";"X"]];        [["P";"P";"P";"P"];["X";"P";"X";"X"]];        [["P";"X"];["P";"P"];["P";"X"];["P";"X"]];        [["X";"P";"X";"X"];["P";"P";"P";"P"]];        [["X";"P"];["X";"P"];["P";"P"];["X";"P"]];        [["P";"P";"P";"P"];["X";"X";"P";"X"]]     ];;
let piece20String: string ="     Piece 20:\n      P   P  P  PPPP P   P    P PPPP\n     PP PPPP P   P   PP PPPP  P   P\n      P      PP      P       PP\n      P      P       P        P\n";;


(* Twenty-first piece in all representations 
   
  Representation 1: P P X
                    X P X 
                    X P P
  Representation 2: X X P
                    P P P
                    P X X
  Representation 3: X P P
                    X P X
                    P P X
  Representation 4: P X X
                    P P P
                    X X P
*)
let piece21: string list list list = [[["P";"P";"X"];["X";"P";"X"];["X";"P";"P"]];   [["X";"X";"P"];["P";"P";"P"];["P";"X";"X"]];        [["X";"P";"P"];["X";"P";"X"];["P";"P";"X"]];        [["P";"X";"X"];["P";"P";"P"];["X";"X";"P"]]  ];;
let piece21String: string ="     Piece 21:\n     PP    P  PP P\n      P  PPP  P  PPP\n      PP P   PP    P\n";;

(* List of all pieces *)
let pieces: string list list list list = [[[["Placeholder"]]];piece1;piece2;piece3;piece4;piece5;piece6;piece7;piece8;piece9;piece10;piece11;piece12;piece13;piece14;piece15;piece16;piece17;piece18;piece19;piece20;piece21]

(* List of string representation of all pieces *)
let piecesStrings: string list = ["Placeholder";piece1String;piece2String;piece3String;piece4String;piece5String;piece6String;piece7String;piece8String;piece9String;piece10String;piece11String;piece12String;piece13String;piece14String;piece15String;piece16String;piece17String;piece18String;piece19String;piece20String;piece21String];;





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


let board_to_string_file (board: string list list) = 
  List.fold ~f:(^) ~init:("") (List.map ~f:(row_to_string) board);;

let pieces_to_string_file (pieces: string list list) = 
  List.fold ~f:(^) ~init:("") (List.map ~f:(row_to_string) pieces);;


(*
let empty_board: string list list = [["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"]];;
*)
let empty_board: string list list = [["R";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"G";"Y"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"G";"G"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["G";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"B"]];;


let empty_board_numbered: string list list = [["1";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["2";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["3";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["4";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["5";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["6";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["7";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["8";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["9";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["10";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["11";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["12";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["13";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["14";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["15";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["16";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["17";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["18";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["19";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"];["20";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X";"X"]];;

(*
let num_list: string list = ["1"; "2"; "3"; "4"; "5"; "6"; "7"; "8"; "9"; "10"; "11"; "12"; "13"; "14"; "15"; "16"; "17"; "18"; "19"; "20"; "21"];;
*)

let num_list: string list = ["4"];;



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
  remove_piece_helper data to_remove 0;;

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
    print_endline ("Testing piece\n" ^ (board_to_string_file piece) ^ "Test valid placement bool: " ^ (string_of_bool (test_valid_placement (board_section_to_place piece board (col_row_to_coord col row)) piece color)) ^ "\n" ^ "Coord: " ^ (col_row_to_coord col row) ^"\nColor: " ^ color ^ "\nIndex: " ^ (string_of_int index) ^ "\nSize of board: " ^ (string_of_int ((List.length (List.nth_exn board 0)) * (List.length board))) ^ "\nCol:" ^ (string_of_int col) ^ "\nRow:" ^ (string_of_int row) ^ "\nBool: " ^ (string_of_bool (index = ((List.length (List.nth_exn board 0)) * (List.length board)))) ^ "\n" ^ "Try put piece bool: " ^ (string_of_bool (try_put_piece_on_board piece board (col_row_to_coord col row) color)) ^ "\n");
    if index = ((List.length (List.nth_exn board 0)) * (List.length board)) then false
    else if try_put_piece_on_board piece board (col_row_to_coord col row) color then true
    else test_piece_rep_possible_move_helper board piece (index + 1) color;;

let test_piece_rep_possible_move (board: string list list) (piece: string list list) (color: string) : bool =
  test_piece_rep_possible_move_helper board piece 0 color;;

let rec test_piece_possible_move_helper (board: string list list) (piece: string list list list) (color: string) (counter: int) : bool =
  if counter = (List.length piece) then true
  else test_piece_rep_possible_move board (List.nth_exn piece counter) color && test_piece_possible_move_helper board piece color (counter + 1);;

let test_piece_possible_move (board: string list list) (piece: string list list list) (color: string) : bool =
  test_piece_possible_move_helper board piece color 0;;

let rec test_all_possible_moves_helper (board: string list list) (pieces: string list list list list) (color: string) (counter: int) : bool =
  if counter = (List.length pieces) then true
  else test_piece_possible_move board (List.nth_exn pieces counter) color && test_all_possible_moves_helper board pieces color (counter + 1);;

let test_all_possible_moves (board: string list list) (color: string) (data: string list list) : bool =
  test_all_possible_moves_helper board (get_pieces_test color data) color 0;;


let skip_player (color: string) (data: string list list) : string list list =
  if (String.equal color "R") then ["NO MORE POSSIBLE MOVES"]  :: (List.nth_exn data 1) :: (List.nth_exn data 2) :: (List.nth_exn data 3) :: (List.nth_exn data 4) :: [[(next_color color)]]
  else if (String.equal color "Y") then (List.nth_exn data 0) :: ["NO MORE POSSIBLE MOVES"] :: (List.nth_exn data 2) :: (List.nth_exn data 3) :: (List.nth_exn data 4) :: [[(next_color color)]]
  else if (String.equal color "B") then (List.nth_exn data 0) :: (List.nth_exn data 1) :: ["NO MORE POSSIBLE MOVES"] :: (List.nth_exn data 3) :: (List.nth_exn data 4) :: [[(next_color color)]]
  else if (String.equal color "G") then (List.nth_exn data 0) :: (List.nth_exn data 1) :: (List.nth_exn data 2) :: ["NO MORE POSSIBLE MOVES"] :: (List.nth_exn data 4) :: [[(next_color color)]]
  else [["\n     ERROR!\n"]];;


let skip_turn (pair: (string list list * string list list)): (string list list * string list list) = 
  ((skip_player ((List.nth_exn (List.nth_exn (get_first pair) 5) 0)) (get_first pair)), get_second pair);;


let check_next_player (loaded: (string list list * string list list)) : (string list list * string list list) =
  print_endline (string_of_bool (test_all_possible_moves (get_second loaded) (List.nth_exn (List.nth_exn (get_first loaded) 5) 0) (get_first loaded)));
  if (test_all_possible_moves (get_second loaded) (List.nth_exn (List.nth_exn (get_first loaded) 5) 0) (get_first loaded)) then loaded
  else (skip_turn loaded);;

(* Play the piece selected in the third element of the tuple
   Playing the piece entails playing the updating the 
      First element of the tuple: update piecees a player has and whose turn it is
      Second element: update the board with the new piece places
*)  
let play_piece (tuple: (string list list * string list list * string list)): (string list list * string list list) = 
  if (try_put_piece_on_board (List.nth_exn (List.nth_exn pieces (int_of_string (List.nth_exn (get_trio_third tuple) 0))) ((-1) + int_of_string (List.nth_exn (get_trio_third tuple) 1))) (get_trio_second tuple) (List.nth_exn (get_trio_third tuple) 2)   (List.nth_exn (List.nth_exn (get_trio_first tuple) 5) 0) ) then
    (update_pieces (List.nth_exn (List.nth_exn (get_trio_first tuple) 5) 0) (get_trio_first tuple) (List.nth_exn (get_trio_third tuple) 0), (put_piece_on_board (List.nth_exn (List.nth_exn pieces (int_of_string (List.nth_exn (get_trio_third tuple) 0))) ((-1) + int_of_string (List.nth_exn (get_trio_third tuple) 1))) (get_trio_second tuple) (List.nth_exn (get_trio_third tuple) 2)   (List.nth_exn (List.nth_exn (get_trio_first tuple) 5) 0) ))
  else (get_trio_first tuple, get_trio_second tuple);;


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
  

(* Print the current state of the game in state.txt to stdio
  This first prints the board, then whose turn it is, then the pieces of the current playeer
*)  
let print_state (loaded: (string list list * string list list)) =
  print_endline (board_to_string_stdio (get_second loaded) ^ player_string (get_first loaded));;