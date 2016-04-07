require_relative("../lib/string_calculator.rb")

RSpec.describe "String calculation" do 
		it "returns 0 for empty string" do
			calculator = string_calculator.new
			expect (calculator.add("1,2,3,4") ).to eq(13) 	#puts calculator.add ("1,2,3,4") = 10
			expect( calculator.add("25,25,25") ).to eq(75) 	#puts calculator.add ("25, 25, 25") == 75
		end 

		it "returns the number do #unit test"
			expect(string_calculator.new.add("5")).to eq(5)
			expect(string_calculator.new.add("3")).to eq(3)
		end

		it "returns 0 for the the empty string" do 
			expect(string_calculator.new.add(" ")).to eq(0)
		end
	
end 