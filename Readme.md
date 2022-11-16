Final Project: Blokus by Jonathon Lopes

Repository Link: https://github.com/jlopes3/blokus-ocaml

Overview of the Purpose of the Project:
This project is going to be an implementation of the board game Blokus. Blokus is a turn-based
strategy board game that involves players putting pieces onto a board. Here is a link to a good
description of the game: https://en.wikipedia.org/wiki/Blokus#:~:text=Blokus%20(%2F%CB%88bl%C9%92,and%20the%20pieces%20are%20polyominoes.

The project is going to be a terminal application that will allow at players to play the game of
Blokus. The first goal is to make the game for 4 players on the same terminal to take turns and
play the game. Persistence will be achieved by writing the state of the game to the a text file
named "state.txt". The state of the game includes information of the current board, the pieces
each player has, which players are AI (will initially be none of them), and which player's turn
it is.

Once the game is working with 4 human players, an AI will be created so that 1-3 human players
can player with the remaining players being AI. The initial plan is to make the AI simply put
down the biggest piece first, and once that works correctly then the focus will be on improving
the AI's ability to compete with human players.

List of Libraries:
Core

Commented Module Type Declarations:
Format is similar to HW4. Command line parsing will be in blokus,ml and helper functions will be
in lib.ml. The main data structure used will be pair of string list lists. The first element of
the pair is the information about individual players and the second elemenet is the board
information. This data structure is describe in greater detail in the comments of lib.ml. There
are no mli files.

Mock Use of Application:

$ dune exec src/blokus.exe init 4 # initialize a new game with 4 human players

![Alt text](Init.png?raw=true "Title")

$ dune exec src/blokus.exe 34 B4 # initialize a new game with 4 human players

![Alt text](AfterTurn.png?raw=true "Title")

If the move is the last possible move over all players, then the game will print the board and
the score of the each player under it instead of the current player's pieces.

If a the next player does not have any possible turns, then a message saying
that will be printed above the board and the players turn will be skipped.

Order of Feature Implementation:
The first goal is to make the terminal application work with all human players. I am setting my
own deadline for the end of Thanksgiving break to have this done. In a finer level, I intend on
implementing the function in the order called in blokus.ml.

The second goal is to make the application work with AI players. I intend to have a working version
with dumb AI players by December 2. I intend on have a more skilled AI player by December 7.
