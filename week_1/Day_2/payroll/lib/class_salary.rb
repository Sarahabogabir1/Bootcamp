
class Salary_Employee 
	include PayableBySalary
	
	attr_accessor(:name, :email, :yearly_salary)

	def initialize (name, email, yearly_salary)
		@name = name
		@email = email
		@yearly_salary = yearly_salary
	end 

	def calc
		salary_by_week
		# this was here before, but we made a modukle-->weekly_total=@yearly_salary/52
	end

end