require_relative 'knight'

class KnightTree
  attr_accessor :root

  def initialize(position, target)
    @root = build_tree(position, target)
  end

  def build_tree(position, target, visited = Set.new)
    root = Knight.new(position)
    visited.add(position)

    if root.possible_moves.include?(target)
      root.pointers << Knight.new(target)
      return root
    elsif visited.size == 8
      return root
    else
      root.possible_moves.each do |move|
        unless visited.include?(move)
          child = Knight.new(move) 
          root.pointers << child
        end
      end
      root.pointers.each do |point|
        child = build_tree(point.position, target, visited)
        point.pointers << child
      end
    end

    root
  end

  def find_shortest_path(target, path = [])

   

  def root_possible_moves
    @root.possible_moves
  end

  def root_pointers
    @root.pointers
  end
end