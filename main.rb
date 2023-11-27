# frozen_string_literal: true

require_relative 'lib/knight'

def knight_moves(start, goal)
  return if start == goal

  root = build_tree(start, goal)
  node = find_node(root, goal)
  path = find_path(node)
  print_knight_moves(path)
end

def build_tree(start, goal)
  root = Knight.new(start)
  queue = [root]

  until queue.empty?
    ref = queue.shift

    return root if ref.position == goal

    ref.moves.each do |move|
      next if move == ref.parent&.position

      child = Knight.new(move, ref)
      ref.children << child
      queue << child
    end
  end

  nil
end

def find_node(root, goal)
  return root if root.position == goal

  root.children.each do |child|
    node = find_node(child, goal)
    return node if node
  end

  nil
end

def find_path(node, path = [])
  path.unshift(node.position)

  return path if node.parent.nil?

  find_path(node.parent, path)
end

def print_knight_moves(path)
  puts "Path: #{path}"
  puts "Moves: #{path.size - 1}"
end

knight_moves([0, 0], [7, 7])
knight_moves([3, 3], [7, 7])
knight_moves([2, 2], [7, 7])
