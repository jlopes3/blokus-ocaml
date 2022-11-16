
(* open Core *)
open Lib
            
 

let () = load_game
  |> proccess_command_line
  |> play_piece
  |> write_game
  |> print_state
;;
