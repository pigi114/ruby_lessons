class RealItem < Item

	attr_reader :weight

	def initialize(options={})
		@weight = options[:weight]
		#call parent initialize 
		super 
	end

	def info 
		yield("Weight: " + weight.to_s)
		super
	end
end