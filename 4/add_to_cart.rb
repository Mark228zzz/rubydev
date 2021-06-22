require_relative 'init'
require_relative 'cart'

owner = ARGV.delete_at(0)
cart = Cart.new(owner)

ARGV.each do |arg|
  @items.each { |obj| cart.add_item obj if arg == obj.name }
end
p @items
cart.save_to_file
cart.read_from_file

