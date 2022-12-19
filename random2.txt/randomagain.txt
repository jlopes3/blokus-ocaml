open Core
open Lib
            



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





let game_over_string (over: bool) (pair:(string list list * string list list)): string =
  if over then (board_to_string_file (get_first pair))
  else ((pieces_to_string_file (subset (get_first pair) 0 3)) ^ (ai_string (string_of_int (List.length (List.nth_exn (get_first pair) 4)))) ^ "      " ^ (List.nth_exn (List.nth_exn (get_first pair) 5) 0) ^ "\n"^ (board_to_string_file (get_second pair)));;


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
let write_game (pair:(string list list * string list list)) =
  let oc = Out_channel.create "state.txt" in
  Out_channel.output_string oc (game_over_string (check_game_over pair) pair);
  Out_channel.flush oc;;




let create_game (num_ai: string) = 
  Out_channel.write_all "state.txt" ~data:((pieces_to_string_file [num_list; num_list; num_list; num_list]) ^ (ai_string num_ai) ^ "      R\n"^ (board_to_string_file empty_board));
  ([num_list; num_list; num_list; num_list] @ [[ai_string num_ai]] @ [["R"]], empty_board)|> print_state;;


(* Puts command line argumeents into a list*)
let command_args = Array.to_list (Sys.get_argv ());;


let not_init =
  if (List.length command_args < 4) then print_string ""
  else 
    let new_state = process_command_line load_game (command_args) |> play_piece |> check_next_player in
     write_game new_state;
     print_state new_state;;

let () = 
if (String.equal (List.nth_exn command_args 1) "init") then create_game (List.nth_exn command_args 2)
else not_init;;

