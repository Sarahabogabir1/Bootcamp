class LocationController < ApplicationController
	# has many :categories
	
	def index #to display all locations
		render "index"
	end 
end
