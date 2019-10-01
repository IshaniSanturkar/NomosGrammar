%token <int> INT
%token <string> ID
%token TRUE
%token FALSE
%token IF
%token THEN
%token ELSE
%token EOF
%token LET
%token IN
%token CONS
%token EQUALS
%token MATCH
%token WITH
%token BAR
%token FUN
%token EMPTYLIST
%token LSQUARE
%token RSQUARE
%token COMMA
%token RIGHTARROW
%token PLUS MINUS TIMES DIV
%token LPAREN RPAREN
%nonassoc THEN
%nonassoc ELSE
%left PLUS MINUS
%left TIMES DIV
%start <Ast.expr option> prog
%%

prog : 
    | e = expr EOF { Some e }
    ;

expr :
    | LPAREN e = expr RPAREN { e }
    | TRUE              { Bool true  }
    | FALSE             { Bool false }
    | i = INT           { Int i  }
    | x = ID            { Var x  }
    | MINUS i = INT     { Int (-i) }
    | c = cond          { c           }
    | l = letin         { l           }
    | lst = listVal     { lst         }
    | a = app           { a           }
    | c = cons          { c           }
    | m = matchExp      { m           }
    | l = lambdaExp     { l           }
    ;
    
cond :
    | IF; ifE = expr; THEN; thenE = expr
                                          {  IfNoElse (ifE, thenE) }
    | IF; ifE = expr; THEN; thenE = expr; ELSE; elseE = expr 
                                          {  IfWithElse (ifE, thenE, elseE) }
    ;

bind  :
    |   x = ID; EQUALS; e = expr { Binding(x, e)  }
    ;

letin :
    | LET; b = bind; IN; inExp = expr { Ast.LetIn (b, inExp) }
    ;

listVal : 
      | EMPTYLIST   { Ast.List [] }
      | LSQUARE; vl = list_fields; RSQUARE { Ast.List vl }
      ;

list_fields :
    | vl = separated_list(COMMA, expr) { vl }
    ;

cons:
    | x = expr; CONS; l = expr { Cons(x, l) }
    ;

op :
    | PLUS { "+" }
    | MINUS { "-" }
    | TIMES { "*" }
    | DIV   { "/" }
    | x = ID { x }
    ;

matchExp:
    | MATCH; x = ID; WITH; BAR; EMPTYLIST; RIGHTARROW; y = expr; BAR; a = ID; 
      CONS; b = ID; RIGHTARROW; c = expr   { Ast.Match(x, y, a, b, c)  }
    ;  

app :
    | e1 = expr opr = op e2 = expr { Ast.Op(e1, opr, e2) }

id_list:
    | x = ID { Ast.Single(x) }
    | x = ID; l = id_list { Ast.Curry(x, l) } 
    ;

lambdaExp :
    | FUN;  args = id_list; RIGHTARROW; body = expr 
                                        { Ast.Lambda(args, body)  }
    ;
