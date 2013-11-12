class Cart
	
	attr_reader :items
 
 	def initialize
 		@items = Array.new 
 	end

	def add_item(item)
		@items.push item
	end

	def remove_item
		@items.pop
	end

	def validate
		@items.each { |i|  puts "Item has no price" if i.real_price.nil? }
	end

	def delete_invalide_items
		@items.delete_if { |i| i.real_price.nil? }
	end
end