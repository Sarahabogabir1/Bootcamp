class SiteController < ApplicationController #inheritance
	def home
		render 'home' #name of the view template
	end

	def contact
		render 'contact'
	end

	def say_name
		@name = params[:name] #placeholder in the url parameter
		render 'say_name'
	end 

	def calculate
		@num1 = params [:first_num].to_f
		@num2 = params [:second_num].to_f
		@result = @num1 + @num2
		render 'calculate'
	end 
end
