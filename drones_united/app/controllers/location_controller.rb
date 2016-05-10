class LocationController < ApplicationController
	# has many :categories
	
	def index #to display all locations
		@locations = Location.all
		@beginners = Location.where("user_level = 1")
		@intermediates = Location.where("user_level = 2")
		@advanced = Location.where("user_level = 3")
		render "index"
	end 

	def show
		#render location 
		location = Location.find([params:id])	
	end

	

end
