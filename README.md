# NomosGrammar
Grammar for parser for subset of Ocaml as a part of Nomos (https://www.cs.cmu.edu/~janh/projects/02_nomos/) project. This grammar will be inputted to the Menhir parser generator (http://gallium.inria.fr/~fpottier/menhir/) which will output a parser in Ocaml. The AST generated will be traversed and its structure will be outputted on `stdout`. 

### Prerequisites

#### Opam
The instructions for installing opam are available on the [opam installation page](https://opam.ocaml.org/doc/Install.html). Please install the latest version of opam.

##### Configuring Opam
To configure opam for the first time and install the latest version of OCaml, please run the following (skip if you have already configured opam)
```
$ opam init
```

### Installing Menhir
```
$ opam install menhir          
```

## Building the Parser
To build the parser, run `make` from the current directory.


To run the parser, run `./main.native`. Then type your input as a single line and press Ctrl-D to indicate the end of your input.
The expressions currently supported by the parser are:
- values such as booleans and integers
- `if-then-else` statements
- `let-in` statements
- basic binary operations such as `+, -, *, /`
- list declaration separated by commas or as `x::xs`
