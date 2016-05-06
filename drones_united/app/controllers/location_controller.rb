class LocationController < ApplicationController
	has many :categories
	
	def index #to display all locations
		@locations = Locations.all
		render index
	end 
end
