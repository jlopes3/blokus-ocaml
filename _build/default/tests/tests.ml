open Core;;
open OUnit2;;

open Lib;;
open Constants;;


let test_get_first _ =
  assert_equal (get_first (1,2)) @@ 1;
  assert_equal (get_first (2,0)) @@ 2

let test_get_second _ =
  assert_equal (get_second (1,2)) @@ 2;
  assert_equal (get_second (2,0)) @@ 0

let test_get_trio_first _ =
  assert_equal (get_trio_first (1,2,0)) @@ 1;
  assert_equal (get_trio_first (2,0,0)) @@ 2

let test_get_trio_second _ =
  assert_equal (get_trio_second (1,2,0)) @@ 2;
  assert_equal (get_trio_second (2,0,1)) @@ 0

let test_get_trio_third _ =
  assert_equal (get_trio_third (1,2,3)) @@ 3;
  assert_equal (get_trio_third (2,0,4)) @@ 4

let test_ai_string _ =
  assert_equal (ai_string "0") @@ "      \n";
  assert_equal (ai_string "1") @@ "      Y\n";
  assert_equal (ai_string "2") @@ "      B Y\n";
  assert_equal (ai_string "3") @@ "      G B Y\n";
  assert_equal (ai_string "4") @@ "      ERROR\n"

let test_next_color _ =
  assert_equal (next_color "R") @@ "Y";
  assert_equal (next_color "Y") @@ "B";
  assert_equal (next_color "B") @@ "G";
  assert_equal (next_color "G") @@ "R";
  assert_equal (next_color "E") @@ "ERROR!"

let test_intro_string _ =
  assert_equal (intro_string "R") @@ "\n     It is red's turn!\n     Here are your pieces:\n";
  assert_equal (intro_string "Y") @@ "\n     It is yellow's turn!\n     Here are your pieces:\n";
  assert_equal (intro_string "B") @@ "\n     It is blue's turn!\n     Here are your pieces:\n";
  assert_equal (intro_string "G") @@ "\n     It is green's turn!\n     Here are your pieces:\n";
  assert_equal (intro_string "E") @@ "\n     ERROR!\n"

let test_remove_piece _ =
  assert_equal (remove_piece ["a";"b";"c"] "c") @@ ["a";"b"];
  assert_equal (remove_piece ["a";"b";"c"] "b") @@ ["a";"c"];
  assert_equal (remove_piece ["a";"b";"c"] "a") @@ ["b";"c"]

let test_not _ =
  assert_equal (not true) @@ false;
  assert_equal (not false) @@ true

let data = [["Red"]; ["Yellow"]; ["Blue"]; ["Green"]];;
let data3 = [["Red"]; ["Blue"]; ["Green"]];;

let test_string_list_of_pieces _ =
  assert_equal (string_list_of_pieces "R" data) @@ ["Red"];
  assert_equal (string_list_of_pieces "Y" data) @@ ["Yellow"];
  assert_equal (string_list_of_pieces "B" data) @@ ["Blue"];
  assert_equal (string_list_of_pieces "G" data) @@ ["Green"];
  assert_equal (string_list_of_pieces "F" data) @@ ["\n     ERROR!\n"]

let data2 = ["Red";"Blue"];;

let test_row_to_string _ =
  assert_equal (row_to_string data2) @@ "      Red  Blue\n"

let test_remove_first_char _ =
  assert_equal (remove_first_char "123") @@ "23"

let test_remove_double_digits _ =
  assert_equal (remove_double_digits 10 "123") @@ "23";
  assert_equal (remove_double_digits 5 "123") @@ "123"

let test_make_list_funcs _ =
  assert_equal (make_list_of_lines "p\nr\nico") @@ ["p";"r";"ico"];
  assert_equal (make_list_of_chars "p r i") @@ ["p";"r";"i"]

let test_subset _ =
  assert_equal (subset [0;1;2;3;4] 0 2) @@ [0;1;2];
  assert_equal (subset [0;1;2;3;4] 5 2) @@ []

let test_process_command_line _ = 
  assert_equal (process_command_line (data, data3) ["0";"1";"2";"3"]) @@ (data, data3, ["1";"2";"3"])

let data4 = [["Red";"Red1"]; ["Yellow";"Yellow1"]; ["Blue";"Blue1"]; ["Green"; "Green1"]; ["Random"; "Random1"]; ["R"]];;
let data5 = [["Red";"Red1"]; ["Yellow";"Yellow1"]; ["Blue";"Blue1"]; ["Green"; "Green1"]; ["Random"; "Random1"]; ["Y"]];;
let data6 = [["Red";"Red1"]; ["Yellow";"Yellow1"]; ["Blue";"Blue1"]; ["Green"; "Green1"]; ["Random"; "Random1"]; ["B"]];;
let data7 = [["Red";"Red1"]; ["Yellow";"Yellow1"]; ["Blue";"Blue1"]; ["Green"; "Green1"]; ["Random"; "Random1"]; ["G"]];;

let test_update_pieces _ =
  assert_equal (update_pieces "R" data4 "Red") @@ [["Red1"]; ["Yellow";"Yellow1"]; ["Blue";"Blue1"]; ["Green"; "Green1"]; ["Random"; "Random1"]; ["Y"]];
  assert_equal (update_pieces "Y" data5 "Yellow") @@ [["Red";"Red1"]; ["Yellow1"]; ["Blue";"Blue1"]; ["Green"; "Green1"]; ["Random"; "Random1"]; ["B"]];
  assert_equal (update_pieces "B" data6 "Blue") @@ [["Red";"Red1"]; ["Yellow";"Yellow1"]; ["Blue1"]; ["Green"; "Green1"]; ["Random"; "Random1"]; ["G"]];
  assert_equal (update_pieces "G" data7 "Green") @@ [["Red";"Red1"]; ["Yellow";"Yellow1"]; ["Blue";"Blue1"]; ["Green1"]; ["Random"; "Random1"]; ["R"]];
  assert_equal (update_pieces "-" data7 "Green") @@ [["\n     ERROR!\n"]]

let test_coord_col_row _ =
  assert_equal (coord_col "A1") @@ 0;
  assert_equal (coord_row "A1") @@ 0

let piece_on: string list list = [["R";"R";"R";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"Y"];["R";"R";"R";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["R";"R";"R";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["G";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"B"]];;

let test_put_piece_on_board _ =
  assert_equal (put_piece_on_board ([["P";"P";"P"];["P";"P";"P"];["P";"P";"P"]]) empty_board "A1" "R") @@ piece_on

let test_try_put_piece_on_board _ =
  assert_equal (try_put_piece_on_board ([["P";"P";"P"];["P";"P";"P"];["P";"P";"P"]]) empty_board "A1" "R") @@ true;
  assert_equal (try_put_piece_on_board ([["P";"X";"P"];["P";"P";"P"];["P";"P";"P"]]) empty_board "A1" "R") @@ true;
  assert_equal (try_put_piece_on_board ([["P";"X";"P"];["P";"P";"P"];["P";"P";"P"]]) empty_board "A25" "R") @@ false;
  assert_equal (try_put_piece_on_board ([["P";"X";"P"];["P";"P";"P"];["P";"P";"P"]]) empty_board "A0" "R") @@ false;
  assert_equal (try_put_piece_on_board ([["P";"X";"P"];["P";"P";"P"];["P";"P";"P"]]) empty_board "Z1" "R") @@ false;
  assert_equal (try_put_piece_on_board ([["P";"X";"P"];["P";"P";"P"];["P";"P";"P"]]) empty_board "!1" "R") @@ false;
  assert_equal (try_put_piece_on_board ([["X";"X";"X"];["X";"X";"X"];["X";"X";"X"]]) empty_board "A1" "R") @@ false;
  assert_equal (try_put_piece_on_board ([["P";"P";"P"];["P";"P";"P"];["P";"P";"P"]]) (put_piece_on_board ([["P";"P";"P"];["P";"P";"P"];["P";"P";"P"]]) empty_board "A1" "R") "A1" "R") @@ false

let data8 = [num_list;num_list;num_list;num_list;["G";"B";"Y"]; ["R"]];;
let blocked_board: string list list = [["R";"G";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"Y"];["G";"G";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-"];["G";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"-";"B"]];;

let test_test_all_possible_moves _ =
  assert_equal (test_all_possible_moves empty_board "R" data8) @@ true;
  assert_equal (test_all_possible_moves empty_board "Y" data8) @@ true;
  assert_equal (test_all_possible_moves empty_board "G" data8) @@ true;
  assert_equal (test_all_possible_moves empty_board "B" data8) @@ true;
  assert_equal (test_all_possible_moves blocked_board "R" data8) @@ false

let data41 = [["0";"Red1"]; ["0";"Yellow1"]; ["0";"Blue1"]; ["0"; "Green1"]; ["0"; "Random1"]; ["R"]];;
let data42 = [["0";"Red1"]; ["0";"Yellow1"]; ["0";"Blue1"]; ["0"; "Green1"]; ["0"; "Random1"]; ["Y"]];;
let data43 = [["0";"Red1"]; ["0";"Yellow1"]; ["0";"Blue1"]; ["0"; "Green1"]; ["0"; "Random1"]; ["G"]];;
let data44 = [["0";"Red1"]; ["0";"Yellow1"]; ["0";"Blue1"]; ["0"; "Green1"]; ["0"; "Random1"]; ["B"]];;

let test_check_next_player_done _ =
  assert_equal (check_next_player_done (data41, data41)) @@ true;
  assert_equal (check_next_player_done (data42, data41)) @@ true;
  assert_equal (check_next_player_done (data43, data41)) @@ true;
  assert_equal (check_next_player_done (data44, data41)) @@ true

let test_player_score _ =
  assert_equal (player_score ["1";"2"]) @@ "11"

let data51= [["1";"2"]; ["0";"Yellow1"]; ["0";"Blue1"]; ["0"; "Green1"]; ["0"; "Random1"]; ["R"]];;
let data51skipped= [["0";"11"]; ["0";"Yellow1"]; ["0";"Blue1"]; ["0"; "Green1"]; ["0"; "Random1"]; ["Y"]];;
let data52= [["1";"2"]; ["1";"2"]; ["0";"Blue1"]; ["0"; "Green1"]; ["0"; "Random1"]; ["Y"]];;
let data52skipped= [["1";"2"]; ["0";"11"]; ["0";"Blue1"]; ["0"; "Green1"]; ["0"; "Random1"]; ["B"]];;
let data53= [["1";"2"]; ["1";"2"]; ["1";"2"]; ["0"; "Green1"]; ["0"; "Random1"]; ["B"]];;
let data53skipped= [["1";"2"]; ["1";"2"]; ["0";"11"]; ["0"; "Green1"]; ["0"; "Random1"]; ["G"]];;
let data54= [["1";"2"]; ["1";"2"]; ["1";"2"]; ["1"; "2"]; ["0"; "Random1"]; ["G"]];;
let data54skipped= [["1";"2"]; ["1";"2"]; ["1";"2"]; ["0"; "11"]; ["0"; "Random1"]; ["R"]];;


let data55= [["0";"2"]; ["1";"2"]; ["1";"2"]; ["1"; "2"]; ["0"; "Random1"]; ["G"]];;
let data55skipped2= [["0";"2"]; ["1";"2"]; ["1";"2"]; ["0"; "11"]; ["0"; "Random1"]; ["Y"]];;


let test_skip_turn _ =
  assert_equal (skip_turn (data51, data51)) @@ (data51skipped, data51);
  assert_equal (skip_turn (data52, data52)) @@ (data52skipped, data52);
  assert_equal (skip_turn (data53, data53)) @@ (data53skipped, data53);
  assert_equal (skip_turn (data54, data54)) @@ (data54skipped, data54);
  assert_equal (skip_turn_try_multiple (data54, data54)) @@ (data54skipped, data54);
  assert_equal (skip_turn_try_multiple (data55, data55)) @@ (data55skipped2, data55)

let data61= [["0";"2"]; ["0";"2"]; ["0";"2"]; ["0"; "11"]; ["0"; "Random1"]; ["R"]];;

let test_check_game_over _ =
  assert_equal (check_game_over (data61, data61)) @@ true;
  assert_equal (game_over (data61, data61)) @@ (data61 @ [["GAME OVER!"]], data61)

let data71= [["0";"2"]; ["0";"2"]; ["0";"2"]; ["0"; "11"]; ["G"; "Y"]; ["G"]];;
let data72= [["0";"2"]; ["0";"2"]; ["0";"2"]; ["0"; "11"]; ["G"; "Y"]; ["R"]];;

let test_check_ai _ =
  assert_equal (check_ai data71) @@ true;
  assert_equal (check_ai data72) @@ false

let part1_tests = "Part 1" >: test_list [
  "Get_first" >:: test_get_first;
  "Get_second" >:: test_get_second;
  "Get_trio_first" >:: test_get_trio_first;
  "Get_trio_second" >:: test_get_trio_second;
  "Get_trio_third" >:: test_get_trio_third;
  "Ai_string" >:: test_ai_string;
  "next_color" >:: test_next_color;
  "test_intro_string" >:: test_intro_string;
  "test_remove_piece" >:: test_remove_piece;
  "test_not" >:: test_not;
  "test_string_list_of_pieces" >:: test_string_list_of_pieces;
  "test_row_to_string" >:: test_row_to_string;
  "test_remove_first_char" >:: test_remove_first_char;
  "test_remove_double_digits" >:: test_remove_double_digits;
  "test_make_list_funcs" >:: test_make_list_funcs;
  "test_subset" >:: test_subset;
  "test_process_command_line" >:: test_process_command_line;
  "test_update_pieces" >:: test_update_pieces;
  "test_coord_col_row" >:: test_coord_col_row;
  "test_put_piece_on_board" >:: test_put_piece_on_board;
  "test_try_put_piece_on_board" >:: test_try_put_piece_on_board;
  "test_test_all_possible_moves" >:: test_test_all_possible_moves;
  "test_check_next_player_done" >:: test_check_next_player_done;
  "test_player_score" >:: test_player_score;
  "test_skip_turn" >:: test_skip_turn;
  "test_check_game_over" >:: test_check_game_over;
  "test_check_ai" >:: test_check_ai;
]


let series = "Assignment4 Tests" >::: [
    part1_tests;
  ]


let () = 
  run_test_tt_main series