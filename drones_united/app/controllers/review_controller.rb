class ReviewController < ApplicationController
	def index
		render "index"
	end

	def new
  	@reviews = Reviews.new
	end

	def create
		@reviews = Reviews.new(params[:params])
end

