class Item

	@@discount = 0.1

	attr_reader :price , :name
	attr_writer :price
	#static method/class methot
	def self.discount
		#get number of current month
		#if current month november @@discount => 0.3
		if Time.now.month == 11
			return @@discount + 0.2
		else
			return @@discount
		end
	end

	def initialize(options={})
		@price  = options[:price]
		@name   = options[:name]
	end

	def info
		yield("Cost: " + price.to_s)
		yield("Name: " + name)
	end

	def price 
		@price.to_i - @price.to_i * self.class.discount
	end
end

