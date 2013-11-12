class Item

	attr_reader :price , :name
	attr_writer :price

	def initialize(options={})
		@price  = options[:price]
		@name   = options[:name]
	end

	def info
		yield("Cost: " + price.to_s)
		yield("Name: " + name)
	end
end

