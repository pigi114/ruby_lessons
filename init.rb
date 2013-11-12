require_relative  "cart"
require_relative  "item"

item1 = Item.new({ :price => 10, :weight => 100, :name => "Car"})
item2 = Item.new({ :weight => 100, :name => "Car"})
item3 = Item.new({ :price => 10, :weight => 100, :name => "Mega car"})

cart = Cart.new
cart.add_item item1
cart.add_item item2
cart.add_item item3

#p cart.items
cart.validate

cart.delete_invalide_items

#p cart.items


cart.items.each { |item| item.info { |attr| puts attr } }



