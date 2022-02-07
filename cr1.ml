open List ;;

let mystery1 : int -> bool = fun x -> x < x + 1 ;;

let mystery2 : (int * string) -> string =
  let greet y = "Hello " ^ y in 
  fun x -> let (a, b) = x in 
           string_of_int a ^ greet ("World" ^ b) ;;
    
let mystery3 : float -> int -> bool -> float =
  fun a b c -> 
    if c then  a *. float_of_int b
    else a ** float_of_int b  ;;
      
let mystery4 : float list -> int -> int -> bool = 
  fun m a b ->
    match m with
    | [] -> a = b
    | [_h] -> (a + b) < 0
    | fst :: snd :: _tl -> (fst ** 2.) < 0. ;;

(* n must be a non-negaitve number! *)
let rec factorial (n: int) : int = 
  if n = 0 then 1
  else n * factorial (n-1)
   ;;

(* Takes in a list of ints and outputs a single int of the sum *)
let rec sum_ints (lst: int list) : int = 
  match lst with
  | [] -> 0
  | hd :: tl -> hd + sum_ints tl ;;

(*  A correct implementation to find the max element of a list 
    that can be improved stylistically! Try your best to fix it!  *)

let rec max_list lst = 
  match lst with
  | hd :: tl -> 
    if tl = [] then hd
    else if hd > (max_list tl) then hd
    else max_list tl ;;

(*  Let us write a function that takes in an integer and doubles it
    using partial application *)
let partial_application_example = ( * ) 2;;

(* Try applying these functions to inputs of type int list! See what happens! *)
let mystery_intent1 = filter ((<) 2) ;;

let mystery_intent2 = map ((+) 2) ;;

let mystery_intent3 = fold_left (fun acc el -> if el = 0 then acc + 1 else acc) 0 ;;



(* Used for cr1_tests.ml *)
let rec manual_rev (lst : int list) : int list =
    match lst with
    | [] -> []
    | hd :: tl -> (manual_rev tl) @ [hd]
;;