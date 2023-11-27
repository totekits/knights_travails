# knights_travails
[This project](https://www.theodinproject.com/lessons/ruby-knights-travails) is from the Odin Project's Ruby Course. The goal is to build a method knight_moves that shows the shortest possible way to move a knight from one square on a chess board to another by outputting all squares the knight will stop on along the way.
## Steps
1. Define Knight class with attributes: position, parent and children to act as node in tree.
2. Define Knight#moves method to show the next possible moves of a knight.
3. Define the knight_moves method which calls the following methods in order:
  - build_tree 
  - find_node
  - find_path
  - print_knights_moves
4. Define build_tree method using BFS approach and queue to build a tree of knight moves.
5. Define find_node method using DFS approach and recursion to find the target node in the tree.
6. Define find_path method using recursion to track the path from the target node to the root.
7. Define print_knight_moves to print the result.