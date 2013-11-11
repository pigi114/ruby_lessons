class Item

	attr_reader :price , :weight, :name
	attr_writer :price

	def initialize(options={})
		@price  = options[:price]
		@weight = options[:weight]
		@name   = options[:name]
	end

	def info
		yield(price)
	end
end

