
class Payroll

attr_accessor(:employees)

    def initialize(employees)
        @employees = employees
    end

  	def pay_employees
  	final_total=0
      @employees.each do |i| #looping
      	final_total += i.calc #final.total = i.calc
      	puts "#{i.name} => #{i.calc}"
  		end
  	puts "The total cost of payroll this week is: #{final_total}"
  	end
		#output should look like:
		#josh => 1750
		#Ted => 5278
		#Ali => 600
		#Sarah => 600
		#The total co
  	 
  	#want it outside because its looping

  	def notify_employee
  		@employees.each do |i| #loop through the array, each objects
  		puts "Hello #{i.email}" #i access to a object
	end	
end 

end
