(* Signature *)
module type Int = sig

  val num : int

end

module One : Int = struct
  
  let num = 1

end

module Five : Int = struct
  
  let num = 5

end

module Two : Int = struct
  
  let num = One.num + 1

end

module Six : Int = struct
  
  let num = Five.num + 1

end

(* Functor *)
module Incr (M : Int) : Int = struct
  let num = M.num + 1
end

(* Let *)
let incr (n : int) : int =

  n + 1


module Two = Incr (One : Int)
module Six = Incr (Five : Int)