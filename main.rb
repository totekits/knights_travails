require_relative 'lib/knight'

def build_tree(start, goal, visited = []) # return root node of the tree
  return if start == goal

  root = Knight.new(start)
  visited << root.position

  if root.moves.include?(goal) || visited.size == 8
    root
  else
    pointers = []
    root.moves.each do |move|
      pointers << build_tree(move, goal, visited) unless visited.include?(move)
    end
    root.moves = pointers
  end

  root
end

def knight_moves(start, goal) # return arr of shortest path and depth
# generate all possible paths from start to finish (use recursion), return a tree
  build_tree(start, goal)
# find the shortest path (use BFS), return arr path
# find its depth, return int depth
end

p build_tree([0,0],[7,7])