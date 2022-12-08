This version is not complete.

In this version, use "dune exec src/blokus.exe init 2" to initialize a game.
This will load in a new game into state.txt and print out the first player's pieces and an empty board.

You can also used "dune exec src/blokus.exe PIECE# REPRESENATION# COORDINATE", for example "dune exec src/blokus.exe 3 2 A3"
The piece number is obvious, the piece representation number is the orienation of the piece, and the coordate is the where you will place the left most square in thee top row of the piece. After trying to get the board to work correctly, I cannot get it to build, so I have made it so that it just keeps an empty board. It does correctly track the player's turn and which pieces the player has.

I will be changing the empty board from X's to another character before the final submission, as suggested in the proposal feedback.
