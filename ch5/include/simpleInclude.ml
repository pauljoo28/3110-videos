module ListStack = struct

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

module ListStackwSum = struct

  include ListStack

  let rec sum s =
    if is_empty s then 0 
    else (peek s) + sum (pop s)

end
