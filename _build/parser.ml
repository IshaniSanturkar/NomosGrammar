
module MenhirBasics = struct
  
  exception Error
  
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
    | INT of (
# 1 "parser.mly"
       (int)
# 24 "parser.ml"
  )
    | IN
    | IF
    | ID of (
# 2 "parser.mly"
       (string)
# 31 "parser.ml"
  )
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
    | APP
  
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
  | MenhirState73
  | MenhirState71
  | MenhirState70
  | MenhirState65
  | MenhirState64
  | MenhirState61
  | MenhirState59
  | MenhirState58
  | MenhirState52
  | MenhirState51
  | MenhirState50
  | MenhirState48
  | MenhirState47
  | MenhirState46
  | MenhirState45
  | MenhirState44
  | MenhirState43
  | MenhirState42
  | MenhirState41
  | MenhirState40
  | MenhirState39
  | MenhirState38
  | MenhirState37
  | MenhirState35
  | MenhirState34
  | MenhirState33
  | MenhirState28
  | MenhirState27
  | MenhirState21
  | MenhirState18
  | MenhirState15
  | MenhirState14
  | MenhirState12
  | MenhirState10
  | MenhirState4
  | MenhirState3
  | MenhirState2
  | MenhirState0

let rec _menhir_goto_id_list : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.arglist) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState15 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (
# 2 "parser.mly"
       (string)
# 109 "parser.ml"
        ))), _, (l : (Ast.arglist))) = _menhir_stack in
        let _v : (Ast.arglist) = 
# 86 "parser.mly"
                          ( Ast.Curry(x, l) )
# 114 "parser.ml"
         in
        _menhir_goto_id_list _menhir_env _menhir_stack _menhir_s _v
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RIGHTARROW ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | APP ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | EMPTYLIST ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | FALSE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | FUN ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | ID _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
            | IF ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | INT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
            | LET ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | LSQUARE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | MATCH ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_separated_nonempty_list_COMMA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (Ast.expr list)) = _v in
        let _v : (Ast.expr list) = 
# 144 "<standard.mly>"
    ( x )
# 179 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (Ast.expr list)) = _v in
        let ((_menhir_stack, _menhir_s, (x : (Ast.expr))), _) = _menhir_stack in
        let _2 = () in
        let _v : (Ast.expr list) = 
# 243 "<standard.mly>"
    ( x :: xs )
# 191 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_op : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (o : (Ast.expr)) = _v in
    let _v : (Ast.expr) = 
# 38 "parser.mly"
                        ( o           )
# 205 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run28 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APP ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | EMPTYLIST ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | FUN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | ID _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | IF ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | INT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | LET ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | LSQUARE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | MATCH ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28

and _menhir_run33 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APP ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | EMPTYLIST ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | FUN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | ID _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | IF ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | INT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | LET ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | LSQUARE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | MATCH ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33

and _menhir_run37 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APP ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | EMPTYLIST ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | FUN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | ID _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | IF ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | INT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | LET ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LSQUARE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | MATCH ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run35 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APP ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | EMPTYLIST ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | FUN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | ID _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | IF ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | INT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | LET ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | LSQUARE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | MATCH ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35

and _menhir_run39 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APP ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | EMPTYLIST ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | FUN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | ID _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | IF ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | INT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | LET ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | LSQUARE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | MATCH ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (xs : (Ast.expr list)) = _v in
    let _v : (Ast.expr list) = let vl = 
# 232 "<standard.mly>"
    ( xs )
# 392 "parser.ml"
     in
    
# 60 "parser.mly"
                                       ( vl )
# 397 "parser.ml"
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
# 56 "parser.mly"
                                           ( Ast.List vl )
# 414 "parser.ml"
         in
        _menhir_goto_listVal _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 2 "parser.mly"
       (string)
# 427 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | RIGHTARROW ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : (
# 2 "parser.mly"
       (string)
# 441 "parser.ml"
        ))) = _menhir_stack in
        let _v : (Ast.arglist) = 
# 85 "parser.mly"
             ( Ast.Single(x) )
# 446 "parser.ml"
         in
        _menhir_goto_id_list _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | APP ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | CONS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | DIV ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | EMPTYLIST ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | FALSE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | FUN ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | ID _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
        | IF ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | INT _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
        | LET ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | LPAREN ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | LSQUARE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | MATCH ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27)
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (x : (Ast.expr))), _), _, (y : (Ast.expr))) = _menhir_stack in
        let _2 = () in
        let _v : (Ast.expr) = 
# 69 "parser.mly"
                                ( Ast.Op(x, "-", y) )
# 509 "parser.ml"
         in
        _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | APP | BAR | COMMA | CONS | ELSE | EMPTYLIST | EOF | FALSE | FUN | ID _ | IF | IN | INT _ | LET | LPAREN | LSQUARE | MATCH | MINUS | PLUS | RPAREN | RSQUARE | THEN | TRUE | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (x : (Ast.expr))), _), _, (y : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) = 
# 68 "parser.mly"
                                ( Ast.Op(x, "+", y) )
# 528 "parser.ml"
             in
            _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34)
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (x : (Ast.expr))), _), _, (y : (Ast.expr))) = _menhir_stack in
        let _2 = () in
        let _v : (Ast.expr) = 
# 71 "parser.mly"
                                ( Ast.Op(x, "/", y) )
# 543 "parser.ml"
         in
        _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | APP | BAR | COMMA | CONS | ELSE | EMPTYLIST | EOF | FALSE | FUN | ID _ | IF | IN | INT _ | LET | LPAREN | LSQUARE | MATCH | MINUS | PLUS | RPAREN | RSQUARE | THEN | TRUE | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (x : (Ast.expr))), _), _, (y : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) = 
# 70 "parser.mly"
                                ( Ast.Op(x, "*", y) )
# 562 "parser.ml"
             in
            _menhir_goto_op _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38)
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | APP | BAR | COMMA | CONS | ELSE | EMPTYLIST | EOF | FALSE | FUN | ID _ | IF | IN | INT _ | LET | LPAREN | LSQUARE | MATCH | RPAREN | RSQUARE | THEN | TRUE | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (x : (Ast.expr))), _), _, (l : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) = 
# 64 "parser.mly"
                               ( Cons(x, l) )
# 589 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (c : (Ast.expr)) = _v in
            let _v : (Ast.expr) = 
# 35 "parser.mly"
                        ( c           )
# 597 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40)
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | DIV ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | APP | BAR | COMMA | ELSE | EMPTYLIST | EOF | FALSE | FUN | ID _ | IF | IN | INT _ | LET | LPAREN | LSQUARE | MATCH | RPAREN | RSQUARE | THEN | TRUE | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (e1 : (Ast.expr))), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _1 = () in
            let _v : (Ast.expr) = 
# 81 "parser.mly"
                                 ( Ast.App(e1, e2)  )
# 626 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (a : (Ast.expr)) = _v in
            let _v : (Ast.expr) = 
# 34 "parser.mly"
                        ( a           )
# 634 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41)
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | DIV ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | APP | BAR | COMMA | ELSE | EMPTYLIST | EOF | FALSE | FUN | ID _ | IF | IN | INT _ | LET | LPAREN | LSQUARE | MATCH | RPAREN | RSQUARE | THEN | TRUE | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (args : (Ast.arglist))), _, (body : (Ast.expr))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 91 "parser.mly"
                                        ( Ast.Lambda(args, body)  )
# 664 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (l : (Ast.expr)) = _v in
            let _v : (Ast.expr) = 
# 37 "parser.mly"
                        ( l           )
# 672 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42)
    | MenhirState12 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | DIV ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState43 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | APP ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | EMPTYLIST ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | FALSE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | FUN ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | ID _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
            | IF ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | INT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
            | LET ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | LSQUARE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | MATCH ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44)
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43)
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | DIV ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | ELSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState45 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | APP ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | EMPTYLIST ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | FALSE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | FUN ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | ID _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
            | IF ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | INT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
            | LET ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | LSQUARE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | MATCH ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46)
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45)
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | DIV ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | APP | BAR | COMMA | ELSE | EMPTYLIST | EOF | FALSE | FUN | ID _ | IF | IN | INT _ | LET | LPAREN | LSQUARE | MATCH | RPAREN | RSQUARE | THEN | TRUE | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((((_menhir_stack, _menhir_s), _, (ifE : (Ast.expr))), _), _, (thenE : (Ast.expr))), _), _, (elseE : (Ast.expr))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 43 "parser.mly"
                                          (  IfWithElse (ifE, thenE, elseE) )
# 811 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (c : (Ast.expr)) = _v in
            let _v : (Ast.expr) = 
# 31 "parser.mly"
                        ( c           )
# 819 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47)
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | DIV ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, (x : (
# 2 "parser.mly"
       (string)
# 846 "parser.ml"
            ))), _, (e : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.binding) = 
# 47 "parser.mly"
                                 ( Binding(x, e)  )
# 852 "parser.ml"
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
                | APP ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState50
                | EMPTYLIST ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState50
                | FALSE ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState50
                | FUN ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState50
                | ID _v ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
                | IF ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState50
                | INT _v ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
                | LET ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState50
                | LPAREN ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState50
                | LSQUARE ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState50
                | MATCH ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState50
                | TRUE ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState50
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48)
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | DIV ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | APP | BAR | COMMA | ELSE | EMPTYLIST | EOF | FALSE | FUN | ID _ | IF | IN | INT _ | LET | LPAREN | LSQUARE | MATCH | RPAREN | RSQUARE | THEN | TRUE | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), (b : (Ast.binding))), _, (inExp : (Ast.expr))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 51 "parser.mly"
                                      ( Ast.LetIn (b, inExp) )
# 925 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (l : (Ast.expr)) = _v in
            let _v : (Ast.expr) = 
# 32 "parser.mly"
                        ( l           )
# 933 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51)
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | DIV ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState52 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Ast.expr))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 26 "parser.mly"
                             ( e )
# 964 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52)
    | MenhirState59 | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState58 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | APP ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | EMPTYLIST ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | FALSE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | FUN ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | ID _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
            | IF ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | INT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
            | LET ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | LSQUARE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | MATCH ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59)
        | CONS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | DIV ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | RSQUARE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Ast.expr))) = _menhir_stack in
            let _v : (Ast.expr list) = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1029 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58)
    | MenhirState2 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | DIV ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState61 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | EMPTYLIST ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | RIGHTARROW ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | APP ->
                        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState64
                    | EMPTYLIST ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState64
                    | FALSE ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState64
                    | FUN ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState64
                    | ID _v ->
                        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
                    | IF ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState64
                    | INT _v ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
                    | LET ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState64
                    | LPAREN ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState64
                    | LSQUARE ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState64
                    | MATCH ->
                        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState64
                    | TRUE ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState64
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61)
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState65 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | CONS ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | ID _v ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _menhir_stack = (_menhir_stack, _v) in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        (match _tok with
                        | RIGHTARROW ->
                            let _menhir_stack = Obj.magic _menhir_stack in
                            let _menhir_env = _menhir_discard _menhir_env in
                            let _tok = _menhir_env._menhir_token in
                            (match _tok with
                            | APP ->
                                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                            | EMPTYLIST ->
                                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                            | FALSE ->
                                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                            | FUN ->
                                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                            | ID _v ->
                                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
                            | IF ->
                                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                            | INT _v ->
                                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
                            | LET ->
                                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                            | LPAREN ->
                                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                            | LSQUARE ->
                                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                            | MATCH ->
                                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                            | TRUE ->
                                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                            | _ ->
                                assert (not _menhir_env._menhir_error);
                                _menhir_env._menhir_error <- true;
                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let _menhir_stack = Obj.magic _menhir_stack in
                            let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
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
                    let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | CONS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | DIV ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65)
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | DIV ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | APP | BAR | COMMA | ELSE | EMPTYLIST | EOF | FALSE | FUN | ID _ | IF | IN | INT _ | LET | LPAREN | LSQUARE | MATCH | RPAREN | RSQUARE | THEN | TRUE | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((((((_menhir_stack, _menhir_s), _, (x : (Ast.expr))), _), _, (y : (Ast.expr))), _), (a : (
# 2 "parser.mly"
       (string)
# 1232 "parser.ml"
            ))), (b : (
# 2 "parser.mly"
       (string)
# 1236 "parser.ml"
            ))), _, (c : (Ast.expr))) = _menhir_stack in
            let _11 = () in
            let _9 = () in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 76 "parser.mly"
                                           ( Ast.Match(x, y, a, b, c)  )
# 1248 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (m : (Ast.expr)) = _v in
            let _v : (Ast.expr) = 
# 36 "parser.mly"
                        ( m           )
# 1256 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71)
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | DIV ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState73 in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (e : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 17 "parser.mly"
       (Ast.expr option)
# 1281 "parser.ml"
            ) = 
# 21 "parser.mly"
                   ( Some e )
# 1285 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (
# 17 "parser.mly"
       (Ast.expr option)
# 1292 "parser.ml"
            )) = _v in
            Obj.magic _1
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | TIMES ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73)
    | _ ->
        _menhir_fail ()

and _menhir_goto_listVal : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (lst : (Ast.expr)) = _v in
    let _v : (Ast.expr) = 
# 33 "parser.mly"
                        ( lst         )
# 1316 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState73 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState71 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState61 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState51 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState15 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState12 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState2 ->
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
# 27 "parser.mly"
                        ( Bool true  )
# 1482 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APP ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | EMPTYLIST ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | FUN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | ID _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | IF ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | INT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | LET ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | LSQUARE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | MATCH ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APP ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | EMPTYLIST ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | FUN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | ID _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | IF ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | INT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | LET ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | LSQUARE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | MATCH ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | RSQUARE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState3 in
        let _v : (Ast.expr list) = 
# 142 "<standard.mly>"
    ( [] )
# 1557 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APP ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | EMPTYLIST ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | FUN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | ID _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | IF ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | INT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | LET ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | LSQUARE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | MATCH ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | MINUS ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState4 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | INT _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | RPAREN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((_menhir_stack, _menhir_s), _), (i : (
# 1 "parser.mly"
       (int)
# 1613 "parser.ml"
                ))) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : (Ast.expr) = 
# 25 "parser.mly"
                                      ( Int (-i) )
# 1621 "parser.ml"
                 in
                _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
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
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            | APP ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | EMPTYLIST ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | FALSE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | FUN ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | ID _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | IF ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | INT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | LET ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | LSQUARE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | MATCH ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10)
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

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 1 "parser.mly"
       (int)
# 1703 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (i : (
# 1 "parser.mly"
       (int)
# 1711 "parser.ml"
    )) = _v in
    let _v : (Ast.expr) = 
# 29 "parser.mly"
                        ( Int i  )
# 1716 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APP ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | EMPTYLIST ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | FUN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | ID _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | IF ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | INT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | LET ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | LSQUARE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | MATCH ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 2 "parser.mly"
       (string)
# 1758 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (x : (
# 2 "parser.mly"
       (string)
# 1766 "parser.ml"
    )) = _v in
    let _v : (Ast.expr) = 
# 30 "parser.mly"
                        ( Var x  )
# 1771 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.expr) = 
# 28 "parser.mly"
                        ( Bool false )
# 1796 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.expr) = 
# 55 "parser.mly"
                    ( Ast.List [] )
# 1808 "parser.ml"
     in
    _menhir_goto_listVal _menhir_env _menhir_stack _menhir_s _v

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APP ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | EMPTYLIST ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | FUN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | ID _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | IF ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | INT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | LET ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | LSQUARE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | MATCH ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21

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
# 17 "parser.mly"
       (Ast.expr option)
# 1862 "parser.ml"
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
    | APP ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EMPTYLIST ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FUN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | LET ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LSQUARE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | MATCH ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 269 "<standard.mly>"
  

# 1908 "parser.ml"
