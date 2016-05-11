class ReviewController < ApplicationController
	def index
		render "index"
	end

	def new
  		@reviews = Review.new
	end

	def create
		@reviews = Review.new(params[:review])
		if @reviews.save
			redirect_to @user, ,alert:"User created successfully"
		else 
			redirect_to new_user_path, alert: "Error creating user."
		end 
	
	def show
    	@users = User.find(params[:id])
	end
end

