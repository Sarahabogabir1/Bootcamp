
class Multi

	attr_accessor(:name, :email, :yearly_salary, :hourly_rate, :hours_worked) #connects to app.rb

	def initialize (name, email, yearly_salary, hourly_rate, hours_worked)
		@name = name #instance variable
		@email = email
		@yearly_salary = yearly_salary
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end

	def calc
		weekly_income = @yearly_salary/52
		overtime = @hours_worked - 40
		overtime_pay = overtime * @hourly_rate #instance variable so we have to use the @ sign.
		final_total = weekly_income + overtime_pay
	end

end