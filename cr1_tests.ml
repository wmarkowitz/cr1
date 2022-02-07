(*
                         CS 51 Code Review 1
                Core Functional Programming -- Testing
*)                           

open Cr1 ;;

(* The Absbook module contains simple functions for unit testing:
   `unit_test` and `unit_test_within`. *)
open CS51Utils ;;
open Absbook ;;
open List ;;
  
(* We can do tests manually, but this can scale pretty poorly as 
the size increases *)
let manual_tests () =
  unit_test (manual_rev [] = [])
            "manual empty test";
  unit_test (manual_rev [1] = [1])
            "manual small test";
  unit_test (manual_rev [1;2;3] = [3;2;1])
            "manual medium test";
  unit_test (manual_rev [1;2;3;4;5;6;7;8;9;10;11;12;13;14;15] = [15;14;13;12;11;10;9;8;7;6;5;4;3;2;1])
            "manual larger test";
;;

(* We can compare our code with other functions that we already know works, make sure we don't have to manually find the output! *)
let easier_tests () =
  unit_test (manual_rev [] = List.rev [])
            "easier empty test";
  unit_test (manual_rev [1] = List.rev [1])
            "easier small test";
  unit_test (manual_rev [1;2;3] = List.rev [1;2;3])
            "easier medium test";
  unit_test (manual_rev [1;2;3;4;5;6;7;8;9;10;11;12;13;14;15] = List.rev [1;2;3;4;5;6;7;8;9;10;11;12;13;14;15])
            "easier larger test";
  unit_test (manual_rev [1;4;3;2;6;34;1234;16;13;13;624;623;1234;26;35;135;876;424;1324;16;13;2314;126;134;234;1234] = manual_rev [1;4;3;2;6;34;1234;16;13;13;624;623;1234;26;35;135;876;424;1324;16;13;2314;126;134;234;1234])
            "easier random test"

let test_all () =
  manual_tests ();
  easier_tests ()
  ;;

let _ = test_all () ;;
