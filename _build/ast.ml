type arglist = Single of string | Curry of string * arglist
type  expr = 
        | IfNoElse of expr * expr
        | IfWithElse of expr * expr * expr
        | LetIn of binding * expr
        | Bool of bool
        | Int of int
        | Var of string
        | List of expr list
        | Op of expr * string * expr
        | Cons of expr * expr
        | Match of string * expr * string * string * expr
        | Lambda of arglist * expr
and binding = Binding of (string * expr)
