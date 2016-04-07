require_relative "../lib/PasswordChecker.rb"

RSpec.describe "Password" do 
	let (:my_password) {PasswordChecker.new}

	it "returns true if the password is longer than 7 characters" do 
		expect( my_password.check_length("Ironhack")).to eq(true)
	end

	it "returns true if password contains at least 1 letter, 1 number and 1 symbol" do
		expect( my_password.check_char("#1ronhack")).to eq(true)
	end 

	it "returns true if there if there is at least 1 uppercase and one lowercase" do
		expect( my_password.check_lowercase_uppercase("Ironhack")).to eq(true)
	end
	
	it "returns true if the password does not contain neither the name nor the domain of the email" do
		expect( my_password.check_name_domain("sarahaboabir@yahoo.com","chile123")).to eq(true)
	end

	it "returns true if the password matches all the conditions and methods" do
		expect( my_password.check_password("hello@gmail.com","#1ronHack")).to eq(true)
	end 

end

