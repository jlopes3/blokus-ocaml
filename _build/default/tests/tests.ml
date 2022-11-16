(*
  Put the tests for lib.ml functions here
*)

open Core;;
open OUnit2;;

open Lib;;

module R:Randomness = struct
  let int _ = 0
end

module IGrams = N_grams (R) (Int)


let test_chunks _ =
  assert_equal ([[1;2;3]; [2;3;4]; [3;4;5]]) @@ chunks 3 [1; 2; 3; 4; 5];
  assert_equal ([["a";"b"]; ["b";"c"]; ["c";"d"]; ["d";"e"]]) @@ chunks 2 ["a"; "b"; "c"; "d"; "e"];
  assert_equal [] @@ chunks 3 [1; 2]

let test_split_last _ =
  assert_equal (3,[1;2]) @@ split_last [1;2;3];
  assert_equal ("c",["a";"b"]) @@ split_last ["a";"b";"c"];
  assert_equal (3,[]) @@ split_last [3]

let test_sample _ =
  assert_equal None @@ sample (module Random) (Core.Bag.of_list []);
  assert_equal (Some(1)) @@ sample (module Random) (Core.Bag.of_list [1]);
  assert_equal (Some(1)) @@ sample (module R) (Core.Bag.of_list [1;2]);
  assert_equal (Some(10)) @@ sample (module R) (Core.Bag.of_list [10;2;3;4;5;6])

let test_sanitize _ =
  assert_equal (Some("abc")) @@ sanitize "abc";
  assert_equal (Some("a4bc")) @@ sanitize "a4bc";
  assert_equal (Some("abc")) @@ sanitize "ab%%%%c";
  assert_equal None @@ sanitize "###";
  assert_equal (Some("abc")) @@ sanitize "Abc"

(*
  [1] -> {2}
  [2] -> {3}   
*)
let result1 = IGrams.ngrams 2 [1; 2; 3]

(*
  [1; 2] -> {3};
  [2; 3] -> {4; 1};
  [3; 4] -> {4};
  [4; 4] -> {4; 2};
  [4; 2] -> {2};
  [2; 2] -> {3};   
*)
let result2 = IGrams.ngrams 3 [1; 2; 3; 4; 4; 4; 2; 2; 3; 1]

let test_ngrams _ =
  assert_equal [2] @@ Bag.to_list(IGrams.Token_list_map.find_exn result1 [1]);
  assert_equal [3] @@ Bag.to_list(IGrams.Token_list_map.find_exn result1 [2]);
  assert_equal [3] @@ Bag.to_list(IGrams.Token_list_map.find_exn result2 [1;2]);
  assert_equal [4;1] @@ Bag.to_list(IGrams.Token_list_map.find_exn result2 [2;3]);
  assert_equal [4] @@ Bag.to_list(IGrams.Token_list_map.find_exn result2 [3;4]);
  assert_equal [4;2] @@ Bag.to_list(IGrams.Token_list_map.find_exn result2 [4;4]);
  assert_equal [2] @@ Bag.to_list(IGrams.Token_list_map.find_exn result2 [4;2]);
  assert_equal [3] @@ Bag.to_list(IGrams.Token_list_map.find_exn result2 [2;2])

(* not go beyond max leength, only one option, use custom random*)
let test_sample_sequence _ =
  assert_equal [1;2;3] @@ IGrams.sample_sequence result1 ~max_length:5 ~initial_ngram:[1];
  assert_equal [2;3] @@ IGrams.sample_sequence result1 ~max_length:5 ~initial_ngram:[2];
  assert_equal [1;2] @@ IGrams.sample_sequence result1 ~max_length:2 ~initial_ngram:[1];
  assert_equal [1;2;3;4;4] @@ IGrams.sample_sequence result2 ~max_length:5 ~initial_ngram:[1;2];
  assert_equal [2;2;3;4;4] @@ IGrams.sample_sequence result2 ~max_length:5 ~initial_ngram:[2;2];
  assert_equal [2;2;3] @@ IGrams.sample_sequence result2 ~max_length:3 ~initial_ngram:[2;2];
  assert_equal [2;5] @@ IGrams.sample_sequence result2 ~max_length:3 ~initial_ngram:[2;5]

let part1_tests = "Part 1" >: test_list [
  "Chunks" >:: test_chunks;
  "Split_last" >:: test_split_last;
  "Sample" >:: test_sample;
  "Sanitize" >:: test_sanitize;
  "Ngrams" >:: test_ngrams;
  "Sample_sequence" >:: test_sample_sequence;
]

let test_make_list_from_string _ =
  assert_equal ["a";"b"] @@ make_list_from_string "a b";
  assert_equal ["a3";"b45";"dc"] @@ make_list_from_string "a3 b45 dc";
  assert_equal ["ab";"b"] @@ make_list_from_string "ab b"

let test_sanitize_all _ =
  assert_equal ["a";"b"] @@ sanitize_all ["a";"b"];
  assert_equal ["a4";"b"] @@ sanitize_all ["a4";"b"];
  assert_equal ["a";"b"] @@ sanitize_all ["a";"b)"];
  assert_equal ["a"] @@ sanitize_all ["a";")"];
  assert_equal ["a";"b"] @@ sanitize_all ["a";"b"]

let test_option_to_bool _ =
  assert_equal false @@ option_to_bool None;
  assert_equal true @@ option_to_bool (Some("the"))

let test_option_to_no_option _ =
  assert_equal "the" @@ option_to_no_option (Some("the"));
  assert_equal "" @@ option_to_no_option None

let test_list_to_string _ =
  assert_equal "the best in" @@ list_to_string ["the"; "best"; "in"];
  assert_equal "the best" @@ list_to_string ["the"; "best"]

let test_first_m_list _ =
  assert_equal [1;2;3] @@ first_m_list [1;2;3;4;5] 3;
  assert_equal [1;2] @@ first_m_list [1;2;3;4;5] 2

let test_first_elements _ =
  assert_equal [1;2;3] @@ first_elements 3 [1;2;3;4;5];
  assert_equal [1;2] @@ first_elements 2 [1;2;3;4;5]

let test_compare_frequency_pairs _ =
  assert_equal 0 @@ compare_frequency_pairs (["a"], 15) (["a"], 15);
  assert_equal (-1) @@ compare_frequency_pairs (["a"], 15) (["b"], 15);
  assert_equal (-1) @@ compare_frequency_pairs (["a"], 13) (["b"], 15);
  assert_equal 1 @@ compare_frequency_pairs (["b"], 15) (["a"], 15);
  assert_equal (-1) @@ compare_frequency_pairs (["a"], 15) (["a";"b"], 15);
  assert_equal 1 @@ compare_frequency_pairs (["a";"b"], 15) (["a"], 15);
  assert_equal 1 @@ compare_frequency_pairs (["b"], 15) (["a"], 13)

let test_random_ngram_start _ =
  assert_equal ["1"] @@ random_ngram_start [["1"]]

let part2_tests = "Part 2" >: test_list [
  "Make list from string" >:: test_make_list_from_string;
  "Sanitzie all" >:: test_sanitize_all;
  "Option to bool" >:: test_option_to_bool;
  "Option to no option" >:: test_option_to_no_option;
  "List to string" >:: test_list_to_string;
  "First m list" >:: test_first_m_list;
  "First elements" >:: test_first_elements;
  "Compare frequency pairs" >:: test_compare_frequency_pairs;
  "Random ngram start" >:: test_random_ngram_start;
]

let series = "Assignment4 Tests" >::: [
    part1_tests;
    part2_tests;
  ]


let () = 
  run_test_tt_main series
