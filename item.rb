class Item

	@@discount = 0.05

	attr_reader :real_price , :name
	attr_writer :price
	#static method/class methot
	def self.discount
		#get number of current month
		#if current month november @@discount => 0.3
		if Time.now.month == 11
			return @@discount + 0.1
		else
			return @@discount
		end
	end

	def initialize(options={})
		@real_price  = options[:price]
		@name   = options[:name]
	end

	def info
		yield("Cost: " + price.to_s)
		yield("Name: " + name)
	end

	def price 
		(@real_price.to_i - @real_price.to_i * self.class.discount) + tax
	end

	private 
		def tax
			type_tax = if self.class == VirtualItem
				1
			else 
				2
			end
			cost_tax = if @price.to_i > 5
				@real_price.to_i*0.2
			else 
				@real_price.to_i*0.1
			end
			cost_tax + type_tax
		end

end

