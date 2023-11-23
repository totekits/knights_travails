def find_knight_moves(position, moves=[])
  mods = [[0,-1],[0,1],[2,1],[2,-1],[1,-2],[-1,-2],[-2,-1],[-2,1]]

  mods.each do |mod|
    x = position[0] + mod[0]
    y = position[1] + mod[1]
    moves << [x,y] if x.between(0, 7) && y.between(0, 7)
  end

  moves
end

def knight_moves(start, finish) # take arr start, arr finish, return arr shortest path and depth
  # generate all possible paths from start to finish (use recursion), return a tree
  # find the shortest path (use BFS), return arr path
  # find its depth, return int depth
end