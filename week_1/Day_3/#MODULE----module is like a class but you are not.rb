#MODULE----module is like a class but you are not able to create an instance variable
#-->You make a module and you define it, and you include it inside the class that needs it.
# classes and modules start --> with capital letters
# functions -->snake case
#You can also include many modules inside a class
#--->Define module

#Exercise: create module for salary---------------------------------------------

module PayableBySalary 
	def salary_by_week
		weekly_total=@yearly_salary/52 
	end
end
