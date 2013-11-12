class Item

	attr_reader :price , :weight, :name
	attr_writer :price

	def initialize(options={})
		@price  = options[:price]
		@weight = options[:weight]
		@name   = options[:name]
	end

	def info
		#yield([{:name => 'name'},{:name => 'name1', 'type'=> 'wefwe'}])
		yield(price)
		yield(weight)
		yield(name)
	end
end

