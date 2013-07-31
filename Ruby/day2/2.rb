require 'pp'

class Tree
  attr_accessor :children, :node_name
  
  def initialize(name, children={})
    @node_name = name
    @children = []
    children.each do |child|
      @children << Tree.new(child[0], child[1])
    end
  end
  
  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end
  
  def visit(&block)
    block.call self
  end
end

ruby_tree = Tree.new('root', {
'grandpa' => {
  'dad' => {
    'child1' => {},
    'child2' => {}
  },
  'uncle' => {
    'child3' => {},
    'child4' => {}
  }
}})

#ruby_tree = Tree.new( "Ruby", 
#  [Tree.new("Reia"), 
#   Tree.new("MacRuby")] )
#
puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}
puts

puts "visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}
