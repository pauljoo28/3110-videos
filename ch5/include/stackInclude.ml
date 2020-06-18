(* Stack implementation *)
module type Stack = sig

  type stack

  val empty : stack
  val is_empty : stack -> bool

  val push : int -> stack -> stack

  val peek : stack -> int

  val pop : stack -> stack

end

module ListStack : Stack = struct

  type stack = int list

  let empty = []
  let is_empty s = (s = [])

  let push x s = x :: s

  let peek = function
    | [] -> failwith "Empty"
    | x :: _ -> x

  let pop = function
    | [] -> failwith "Empty"
    | _ :: xs -> xs

end

(* Stack with sum function *)
module type StackwSum = sig

  include Stack

  val sum : stack -> int

end


module ListStackwSum = struct

  include ListStack

  let sum s = List.fold_left (+) 0 s

end
