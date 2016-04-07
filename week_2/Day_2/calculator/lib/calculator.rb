class Calculator
	attr_reader :result, :x, :y
	
	def initialize (x,y)
		@x=x
		@y=y
	end 

	def add 
		@result = @x + @y
		@result.to_s #sinatra can only read strings, thus we need 
		#to convert from floats to string
	end

	def subtract
		@result = @x - @y
		@result.to_s 
	end

	def divide
		@result = @x / @y
		@result.to_s
	end 

	def multiply
		@result = @x * @y
		@result.to_s
	end 

end 