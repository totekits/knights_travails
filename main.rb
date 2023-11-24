require_relative 'lib/knight'

def build_tree(start, target, visited = Set.new, node = nil)
  return node if start == target

  node = Knight.new(start)
  visited.add(start)

  node.possible_moves.each do |move|
    child = build_tree(move, target, visited, node)
    node.pointers << child if !visited.include?(move)
  end

  node
end


# def knight_moves(start, finish) # take arr start, arr finish, return arr shortest path and depth
#   # generate all possible paths from start to finish (use recursion), return a tree
#   # find the shortest path (use BFS), return arr path
#   # find its depth, return int depth
# end