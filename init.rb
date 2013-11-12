require_relative  "cart"
require_relative  "item"
require_relative  "real_item"
require_relative  "virtual_item"

item1 = RealItem.new({ :price => 10, :weight => 100, :name => "Car"})
item2 = VirtualItem.new({ :weight => 100, :name => "Car1"})
item3 = VirtualItem.new({ :price => 10,  :name => "Mega car"})

cart = Cart.new
cart.add_item item1
cart.add_item item2
cart.add_item item3


cart.validate

cart.delete_invalide_items

cart.items.each { |item| item.info { |attr| puts attr } }


