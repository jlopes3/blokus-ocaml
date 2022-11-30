open Core
open Lib
            
 

(* Puts command line argumeents into a list*)
let command_args = Array.to_list (Sys.get_argv ());;

let () = 
  if (String.equal (List.nth_exn command_args 1) "init") then create_game (List.nth_exn command_args 2)
  else print_endline "did not initialize";;
    (*
    load_game
    |> proccess_command_line
    |> play_piece
    |> write_game
    |> print_state
    *)
;;