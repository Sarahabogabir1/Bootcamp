
if auth.verify? (username, password) == true

class Authenticator 
	def initialization (correct_username, correct_password)
		@correct_username = correct_username
		@correct_password = correct_password
	end 

	def verify? (input_username, input_password)
		if input_username = @correct_username #&&
end 