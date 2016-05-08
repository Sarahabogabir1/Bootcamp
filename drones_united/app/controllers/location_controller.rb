class LocationController < ApplicationController
	# has many :categories
	
	def index #to display all locations
		# @locations = Location
		render "index"
	end 
end
