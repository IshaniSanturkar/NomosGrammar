# NomosGrammar
Grammar for input to Menhir parser-generator to generate Parser for Nomos (https://www.cs.cmu.edu/~janh/projects/02_nomos/).


To build the parser, run `make` from the current directory.


To run the parser, run `./main.native`. Then type your input as a single line and press Ctrl-D to indicate the end of your input.
The expressions currently supported by the parser are:
- values such as booleans and integers
- `if-then-else` statements
- `let-in` statements
- basic binary operations such as `+, -, *, /`
- list declaration separated by commas or as `x::xs`
