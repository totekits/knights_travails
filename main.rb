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

def find_shortest_path(node, path = [])
  return path + [node.position] if node.pointers.empty?

  shortest_path = nil

  node.pointers.each do |point|
    ref_path = find_shortest_path(point, path + [node.position])
    shortest_path = ref_path if shortest_path.nil? || ref_path.size < shortest_path.size
  end

  shortest_path
end

def knight_moves(start, target, path = [], edges = 0)
  return if start == target

  node = build_tree(start, target)
  
  path = node.find_shortest_path(node)

# def knight_moves(start, finish) # take arr start, arr finish, return arr shortest path and depth
#   # generate all possible paths from start to finish (use recursion), return a tree
#   # find the shortest path (use BFS), return arr path
#   # find its depth, return int depth
# end