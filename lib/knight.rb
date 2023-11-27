# frozen_string_literal: true

# Knight class
class Knight
  attr_reader :position
  attr_accessor :parent, :children

  def initialize(position, parent = nil)
    @position = position
    @parent = parent
    @children = []
  end

  def moves
    position = self.position
    moves = []
    mods = [[-1, 2], [1, 2], [2, 1], [2, -1], [1, -2], [-1, -2], [-2, -1], [-2, 1]]

    mods.each do |mod|
      x = position[0] + mod[0]
      y = position[1] + mod[1]
      moves << [x, y] if x.between?(0, 7) && y.between?(0, 7)
    end

    moves
  end
end
