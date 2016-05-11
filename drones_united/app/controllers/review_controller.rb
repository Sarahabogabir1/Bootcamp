class ReviewController < ApplicationController
	def new
  	@reviews = Reviews.new
	end
end
