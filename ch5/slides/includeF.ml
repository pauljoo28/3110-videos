module Parent = struct

  let a = 2
  let b = 3

end


module Child = struct

  let a = 2
  let b = 3

  let c = 3

end


module ChildOne = struct
  
  include Parent

  let c = 3

end

module ChildTwo = struct
  
  let a = Parent.a
  let b = Parent.b

  let c = 3

end



