
#Remember:
#Write a test before you write the code
#Make sure the test fails! It's important to know you're testing logic is correct
#Before writing the next test make sure all tests succeed=end
require_relative "../lib/Fizzbuzz.rb"

RSpec.describe "FizzBuzz" do
	before :each do 
		@fizz = FizzBuzz.new #connects to my fizbuzz file
	end
 
#general statement, it doesnt do anything it just returns the number
#add can 
	it "should return a number when its not a multiple of 3 or 5" do 
		# expect(_________).to eq(________)
		# expect(_________).to _________
		expect(@fizz.result("7")).to eq(7)
		expect(@fizz.result("11")).to eq(11)
	end 

	it "should return"
end 

