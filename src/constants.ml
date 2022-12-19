(* This file includes constant data that is used throughout the game*)



(* First part has all of the pieces in string representation and string list list list representation *)

(* First piece in all representations 
   
  First representation: P P P
                        P P P
                        P P P 
  *)
  let piece1: string list list list = [[["P";"P";"P"];["P";"P";"P"];["P";"P";"P"]]];;
  let piece1String: string ="     Piece 1:\n     PPP\n     PPP\n     PPP\n";;


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
                    let piece3: string list list list = [[["X";"P"];["P";"P"]];  [["P";"X"];["P";"P"]];  [["P";"P"];["P";"X"]];  [["P";"P"];["X";"P"]]];;
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


(* Twenty-second piece in all representations 
   
  Representation 1: P P X
                    P P P 
                    X P P
  Representation 2: X P P
                    P P P
                    P P X
*)
let piece22: string list list list = [[["P";"P";"X"];["P";"P";"P"];["X";"P";"P"]];   [["X";"P";"P"];["P";"P";"P"];["P";"P";"X"]];        [["X";"P";"P"];["X";"P";"X"];["P";"P";"X"]];        [["P";"X";"X"];["P";"P";"P"];["X";"X";"P"]]  ];;
let piece22String: string ="     Piece 22:\n     PP   PP\n     PPP PPP\n      PP PP\n";;

(* Twenty-third piece in all representations 
   
  Representation 1: P P P P
                    P X X P 
                    P X X P
                    P P P P
*)
let piece23: string list list list = [[["P";"P";"P";"P"];["P";"X";"X";"P"];["P";"X";"X";"P"];["P";"P";"P";"P"]] ];;
let piece23String: string ="     Piece 22:\n     PPPP\n     P  P\n     P  P\n     PPPP\n";;



(* List of all pieces *)
let pieces: string list list list list = [[[["Placeholder"]]];piece1;piece2;piece3;piece4;piece5;piece6;piece7;piece8;piece9;piece10;piece11;piece12;piece13;piece14;piece15;piece16;piece17;piece18;piece19;piece20;piece21;piece22;piece23]

(* List of string representation of all pieces *)
let piecesStrings: string list = ["Placeholder";piece1String;piece2String;piece3String;piece4String;piece5String;piece6String;piece7String;piece8String;piece9String;piece10String;piece11String;piece12String;piece13String;piece14String;piece15String;piece16String;piece17String;piece18String;piece19String;piece20String;piece21String;piece22String;piece23String];;

(* This is the score associated with each piece. The score is just the amount of tiles the piece covers *)
let piecesScore: int list = [0;9;2;3;3;4;4;4;4;4;5;5;5;5;5;5;5;5;5;5;5;5;7;12];;


(* This is used to start the game *)
let empty_board: string list list = [["R";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"Y"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["G";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"B"]];;

(* This is the pieces each players starts with. This can be changed and to include numbers up to and includes 23 *)
let num_list: string list = ["1"; "2"; "3"; "4"; "5"; "6"; "7"; "8"; "9"; "10"; "11"; "12"; "13"];;



