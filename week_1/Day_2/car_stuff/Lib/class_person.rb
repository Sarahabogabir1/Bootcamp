class Person
	attr_accessor(:age)
	attr_reader(:name)

	def initialize (name, age)
		@name = name 
		@age = age
	end 
end