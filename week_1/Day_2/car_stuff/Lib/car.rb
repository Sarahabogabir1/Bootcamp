class Car	
	def initialize(color,make,model,miles,sound) #constructor
		@color = color
		@make  = make
		@model = model
		@miles = 0
		@sound = sound
	end

	def rev 
		puts @sound
	end

	def set_price (price)
		@price = price
	end

	def visits_city(the_city)
		puts "Now visiting #{the_city}"
		@cities.push(the_city)
	end

	def print_cities
		@cities.each do |one_city|
			puts "This car once visited #{one_city}"

end


