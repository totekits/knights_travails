require_relative 'lib/knight_tree'



tree = KnightTree.new([0,0], [7,7])
puts "#{tree.root_possible_moves}"
puts "#{tree.root_pointers}"


# def knight_moves(start, finish) # take arr start, arr finish, return arr shortest path and depth
#   # generate all possible paths from start to finish (use recursion), return a tree
#   # find the shortest path (use BFS), return arr path
#   # find its depth, return int depth
# end