class LocationController < ApplicationController
	# has many :categories
	
	def index #to display all locations
		@locations = Location.all
	end 

	def show
		#render location 
		@location = Location.find(params[:id])	
	end

end
