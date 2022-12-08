open Core;;
open OUnit2;;

open Lib;;


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
]


let series = "Assignment4 Tests" >::: [
    part1_tests;
  ]


let () = 
  run_test_tt_main series