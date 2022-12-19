Final project for Functional Programming in Software Engineering, Fall 2022, Johns Hopkins University.

Command-line application built in OCaml for playing a modified version of the game Blokus.

Usage:

To compile the project: `$ dune build`  
To Run the tests: `$ dune test`  
To initialize a game: `$ dune exec src/blokus.exe init (number of AI players)`  
To place a piece: `$ dune exec src/blokus.exe (Piece Number) (Representation Number) (Coordinate)`

How the Game Works:

This is a modified version of the popular board game Blokus. There is a 20 by 20 grid where players will take turns placing their colored pieces one a a time. The aim of the game is to get rid of all of your pieces. In this version, the restriction for placing a piece is that it must overlap one of your pieces in one tile and not overlap anyone's pieces anywhere else. Simply, whereever you place you piece must be vacant in all tiles but one, and that one must be occupied by another one of your pieces. The game ends when players either place all of their pieces or cannot place any more of their pieces. The score is determined by adding up the sizes of all a player's tiles that they did not place. The goal is to have the lowest score possible.

To play, you must first initalize the game. You can do this by using `$ dune exec src/blokus.exe (number of AI players)`. You can have up to 3 AI players. Once you have initialize the game, the board and a message about whoever's turn it is will pop up. This message says whose turn it is and what pieces they have. Each pieces have different representations shown for every possible way you can rotate or flip the piece. To place a piece, you must use `$ dune exec src/blokus.exe (Piece Number) (Representation Number) (Coordinate)`. The Piece Number is clearly labeld in the message in standard output. The Representation Number start from 1 counting from left to right for each piece. The coordinate is in the form (A-T)(1-20). The coordinate choosen will be where the top left corner of the piece representation rectangle will go. For example, look at Piece 13 Representation 1:  
![Alt text](Piece13.png?raw=true "Title")

The coordinate will correspond to the gap in the top left corner (The 'X' in the representation below).  
![Alt text](Piece132.png?raw=true "Title")

If you attempt to put a piece into an invalid postion, the board and hands of all the players will stay the same and you will be prompert to make a move again. If there are not possible moves left for an individual, their turn will be skipped. If there are no moves left for any player, the game will end.
