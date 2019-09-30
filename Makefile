.PHONY: all clean test

MENHIR          := menhir

MENHIRFLAGS     := --infer

OCAMLBUILD      := ocamlbuild -use-ocamlfind -use-menhir -menhir "$(MENHIR) $(MENHIRFLAGS)"

MAIN            := main

all:
	$(OCAMLBUILD) $(MAIN).native

clean:
	rm -f *~ .*~
	$(OCAMLBUILD) -clean
