require_relative "lib/Class_Hourly_Employee.rb"
require_relative "lib/class_salary.rb"
require_relative "lib/multi.rb" #call the file here
require_relative "lib/payroll.rb"
require_relative "module.rb" #calling the module

Employee_1 = Hourly_Employee.new("josh", "nachoemail@example.com", 35, 50)

#puts Employee_1.calc #new object 

#have to calculate how much of the yearly salary we're going to pay them.
Employee_2 = Salary_Employee.new("Nizar", "starcraft@gmail.com", 1000000)
#puts Employee_2.email

Employee_3 = Multi.new("Ted", "fortranr0x@gmail.com", 60000, 275, 55)
#puts Employee_3.calc

Employee_4 = Hourly_Employee.new("Ali","alicool@ironhack.com", 15, 40)

Employee_5 = Hourly_Employee.new("Sarah","sarah@ironhack.com", 15, 40)
#puts Employee_2.calc


#our employees are objects, an array of objects
employees = [Employee_1, Employee_2, Employee_3, Employee_4, Employee_5]
payroll_January= Payroll.new(employees)
payroll_January.pay_employees




