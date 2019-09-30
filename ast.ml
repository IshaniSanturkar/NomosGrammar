type  expr = 
        | IfNoElse of expr * expr
        | IfWithElse of expr * expr * expr
        | LetIn of binding * expr
        | Bool of bool
        | Int of int
        | List of expr list
        | Op of expr * string * expr
        | Cons of expr * expr
and binding = Binding of (string * expr)
