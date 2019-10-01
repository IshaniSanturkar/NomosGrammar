
(* The type of tokens. *)

type token = 
  | WITH
  | TRUE
  | TIMES
  | THEN
  | RSQUARE
  | RPAREN
  | RIGHTARROW
  | PLUS
  | MINUS
  | MATCH
  | LSQUARE
  | LPAREN
  | LET
  | INT of (int)
  | IN
  | IF
  | ID of (string)
  | FUN
  | FALSE
  | EQUALS
  | EOF
  | EMPTYLIST
  | ELSE
  | DIV
  | CONS
  | COMMA
  | BAR

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.expr option)
