
module MenhirBasics = struct
  
  exception Error
  
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
    | INT of (
# 1 "parser.mly"
       (int)
# 21 "parser.ml"
  )
    | IN
    | IF
    | ID of (
# 2 "parser.mly"
       (string)
# 28 "parser.ml"
  )
    | FALSE
    | EQUALS
    | EOF
    | ELSE
    | DIV
    | CONS
    | COMMA
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState42
  | MenhirState33
  | MenhirState26
  | MenhirState24
  | MenhirState21
  | MenhirState16
  | MenhirState10
  | MenhirState8
  | MenhirState5
  | MenhirState4
  | MenhirState0

let rec _menhir_goto_op : _menhir_env -> 'ttv_tail -> (string) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | LET ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | LSQUARE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | MINUS ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26

and _menhir_goto_separated_nonempty_list_COMMA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (Ast.expr list)) = _v in
        let _v : (Ast.expr list) = 
# 144 "<standard.mly>"
    ( x )
# 103 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (Ast.expr list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (Ast.expr))) = _menhir_stack in
        let _2 = () in
        let _v : (Ast.expr list) = 
# 243 "<standard.mly>"
    ( x :: xs )
# 115 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        ();
        Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
        assert false

and _menhir_goto_cond : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (c : (Ast.expr)) = _v in
    let _v : (Ast.expr) = 
# 35 "parser.mly"
                        ( c           )
# 131 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run15 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (string) = 
# 72 "parser.mly"
            ( "*" )
# 143 "parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _v

and _menhir_run18 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (string) = 
# 70 "parser.mly"
           ( "+" )
# 155 "parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _v

and _menhir_run19 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (string) = 
# 71 "parser.mly"
            ( "-" )
# 167 "parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _v

and _menhir_run20 : _menhir_env -> 'ttv_tail -> (
# 2 "parser.mly"
       (string)
# 174 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (x : (
# 2 "parser.mly"
       (string)
# 182 "parser.ml"
    )) = _v in
    let _v : (string) = 
# 74 "parser.mly"
             ( x )
# 187 "parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _v

and _menhir_run23 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (string) = 
# 73 "parser.mly"
            ( "/" )
# 199 "parser.ml"
     in
    _menhir_goto_op _menhir_env _menhir_stack _v

and _menhir_run24 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | LET ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | LSQUARE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | MINUS ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24

and _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (xs : (Ast.expr list)) = _v in
    let _v : (Ast.expr list) = let vl = 
# 232 "<standard.mly>"
    ( xs )
# 237 "parser.ml"
     in
    
# 62 "parser.mly"
                                       ( vl )
# 242 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RSQUARE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (vl : (Ast.expr list))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (Ast.expr) = 
# 58 "parser.mly"
                                           ( Ast.List vl )
# 259 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (lst : (Ast.expr)) = _v in
        let _v : (Ast.expr) = 
# 37 "parser.mly"
                        ( lst         )
# 267 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | ID _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | IF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | INT _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
            | LET ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | LPAREN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | LSQUARE ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | MINUS ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16)
        | TIMES ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | ELSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | IF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | INT _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
            | LET ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | LPAREN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | LSQUARE ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | MINUS ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21)
        | ID _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EOF | IN | RPAREN | RSQUARE | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (ifE : (Ast.expr))), _, (thenE : (Ast.expr))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 44 "parser.mly"
                                          (  IfNoElse (ifE, thenE) )
# 379 "parser.ml"
             in
            _menhir_goto_cond _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | ID _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | ELSE | EOF | IN | RPAREN | RSQUARE | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (ifE : (Ast.expr))), _, (thenE : (Ast.expr))), _, (elseE : (Ast.expr))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 46 "parser.mly"
                                          (  IfWithElse (ifE, thenE, elseE) )
# 414 "parser.ml"
             in
            _menhir_goto_cond _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | ID _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | ELSE | EOF | IN | RPAREN | RSQUARE | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (x : (Ast.expr))), _, (l : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) = 
# 66 "parser.mly"
                               ( Cons(x, l) )
# 447 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (c : (Ast.expr)) = _v in
            let _v : (Ast.expr) = 
# 39 "parser.mly"
                        ( c           )
# 455 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | ID _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | ELSE | EOF | IN | RPAREN | RSQUARE | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), (opr : (string))), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _v : (Ast.expr) = 
# 78 "parser.mly"
                                   ( Ast.Op(e1, opr, e2) )
# 487 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (a : (Ast.expr)) = _v in
            let _v : (Ast.expr) = 
# 38 "parser.mly"
                        ( a           )
# 495 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | ID _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, (x : (
# 2 "parser.mly"
       (string)
# 526 "parser.ml"
            ))), _, (e : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.binding) = 
# 50 "parser.mly"
                                 ( Binding(x, e)  )
# 532 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | FALSE ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState33
                | IF ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState33
                | INT _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
                | LET ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState33
                | LPAREN ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState33
                | LSQUARE ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState33
                | MINUS ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState33
                | TRUE ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState33
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | ID _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | ELSE | EOF | IN | RPAREN | RSQUARE | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), (b : (Ast.binding))), _, (inExp : (Ast.expr))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 54 "parser.mly"
                                      ( Ast.LetIn (b, inExp) )
# 601 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (l : (Ast.expr)) = _v in
            let _v : (Ast.expr) = 
# 36 "parser.mly"
                        ( l           )
# 609 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | ID _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Ast.expr))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 30 "parser.mly"
                             ( e )
# 643 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState42 | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | IF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | INT _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
            | LET ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | LPAREN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | LSQUARE ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | MINUS ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42)
        | CONS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | ID _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | RSQUARE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Ast.expr))) = _menhir_stack in
            let _v : (Ast.expr list) = 
# 241 "<standard.mly>"
    ( [ x ] )
# 702 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (e : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 22 "parser.mly"
       (Ast.expr option)
# 728 "parser.ml"
            ) = 
# 26 "parser.mly"
                   ( Some e )
# 732 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (
# 22 "parser.mly"
       (Ast.expr option)
# 739 "parser.ml"
            )) = _v in
            Obj.magic _1
        | ID _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.expr) = 
# 31 "parser.mly"
                        ( Bool true  )
# 811 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (i : (
# 1 "parser.mly"
       (int)
# 828 "parser.ml"
        )) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (Ast.expr) = 
# 34 "parser.mly"
                        ( Int (-i) )
# 835 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | LET ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | LSQUARE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | MINUS ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | RSQUARE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState4 in
        let _v : (Ast.expr list) = 
# 142 "<standard.mly>"
    ( [] )
# 873 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | LET ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | LSQUARE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | MINUS ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUALS ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState8
            | IF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState8
            | INT _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
            | LET ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState8
            | LPAREN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState8
            | LSQUARE ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState8
            | MINUS ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState8
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState8
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            raise _eRR)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 1 "parser.mly"
       (int)
# 960 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (i : (
# 1 "parser.mly"
       (int)
# 968 "parser.ml"
    )) = _v in
    let _v : (Ast.expr) = 
# 33 "parser.mly"
                        ( Int i  )
# 973 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | LET ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | LSQUARE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | MINUS ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.expr) = 
# 32 "parser.mly"
                        ( Bool false )
# 1012 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 22 "parser.mly"
       (Ast.expr option)
# 1031 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = let _tok = Obj.magic () in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | LET ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LSQUARE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | MINUS ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 269 "<standard.mly>"
  

# 1069 "parser.ml"
