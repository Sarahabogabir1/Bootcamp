class Hourly_Employee

	attr_accessor(:name, :email, :rate, :hours)

	def initialize (name, email, rate, hours) #parts of the blueprint
		@name = name #@= instance variable, specific to that instance 
		@email = email
		@rate = rate
		@hours = hours
	end

	def calc
		total = @rate * @hours #have them from earlier
	end
end



