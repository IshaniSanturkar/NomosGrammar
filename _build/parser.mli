
(* The type of tokens. *)

type token = 
  | TRUE
  | TIMES
  | THEN
  | RSQUARE
  | RPAREN
  | PLUS
  | MINUS
  | LSQUARE
  | LPAREN
  | LET
  | INT of (int)
  | IN
  | IF
  | ID of (string)
  | FALSE
  | EQUALS
  | EOF
  | ELSE
  | DIV
  | CONS
  | COMMA

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.expr option)
