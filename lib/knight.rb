class Knight
  attr_accessor :position, :moves

  def initialize(position)
    @position = position
    @moves = find_moves(position)
  end

  def find_moves(position)
    moves = []
    mods = [[-1,2],[1,2],[2,1],[2,-1],[1,-2],[-1,-2],[-2,-1],[-2,1]]

    mods.each do |mod|
      x = position[0] + mod[0]
      y = position[1] + mod[1]
      moves << [x,y] if x.between?(0, 7) && y.between?(0, 7)
    end

    moves
  end
end
