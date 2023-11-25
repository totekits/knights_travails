class Knight
  attr_accessor :position, :possible_moves, :pointers

  def initialize(position)
    @position = position
    @possible_moves = find_possible_moves(position)
    @pointers = []
  end

  def find_possible_moves(position)
    possible_moves = []
    mods = [[-1,2],[1,2],[2,1],[2,-1],[1,-2],[-1,-2],[-2,-1],[-2,1]]

    mods.each do |mod|
      x = position[0] + mod[0]
      y = position[1] + mod[1]
      possible_moves << [x,y] if x.between?(0, 7) && y.between?(0, 7)
    end

    possible_moves
  end
end
