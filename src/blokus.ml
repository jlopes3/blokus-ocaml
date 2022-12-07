open Core
open Lib
            
 

(* Puts command line argumeents into a list*)
let command_args = Array.to_list (Sys.get_argv ());;


let () = 
if (String.equal (List.nth_exn command_args 1) "init") then create_game (List.nth_exn command_args 2)
else process_command_line load_game (command_args) |> play_piece |> write_game;
 if (String.equal (List.nth_exn command_args 1) "init") then print_endline ""
 else print_state load_game;;
