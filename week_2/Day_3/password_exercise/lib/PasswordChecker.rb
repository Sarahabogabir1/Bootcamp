class PasswordChecker

	def check_password(email,password)
		check_length(password) #pass all methods here 
		check_char(password)
		check_lowercase_uppercase(password)
		check_name_domain(email,password)
	end 

	def check_length(password)
		if password.length > 7
			true
		end 
	end 

	def check_char(password)
		if password.match(/[a-zA-Z]/) && password.match(/[0-9]/) && password.match(/\W/)
							#letters				#numbers	#testing characters, dont' need a range
			trueß
		else 
			false
		end 
	end
	
	def check_lowercase_uppercase(password)
		if password.match(/[a-z]/) && password.match(/[A-Z]/)
			true

		else
			false
		end
	end 

	def check_name_domain(email,password)
		array_1=email.split("@") #[nizar [0], gmail.com [1]]
		array_2= array_1[1].split(".") #result => [gmail [0],com[1]]
		name = array_1[0] 			#want name from the first one
		domain = array_2[0]

		if password.include?(name) && password.include?(domain) #not contain the name nor the domain [nizar]@hotmail.com
			false
		else
			true
		end 
	end

end 




