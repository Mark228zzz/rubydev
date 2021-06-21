require_relative 'cart'
require_relative 'item'
require_relative 'virtual_item'
require_relative 'real_item'
require_relative 'item_container'
require_relative 'order'


item1 = VirtualItem.new({price: 25.0, name: 'car'})
item2 = RealItem.new({weight: 120, name: 'car'})

p item1
p item2

cart = Cart.new
p item1
p item1.price
cart.add_item item1
cart.add_item item2
p cart.items.size
cart.remove_item
p cart.items

order = Order.new
order.add_item item1
order.add_item item2
p order.items.size
cart.remove_item
p order.items
p order.count_valid_items