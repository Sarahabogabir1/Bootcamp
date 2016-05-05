class UsersController < ApplicationController
	def index
		@users = User.order(name: :asc).limit(10)
		render "index"
	end 

	

	# def show
	# 	@users = User.find(params[:id])
	# end 

	# def create + new There has to be a page somehwere 
	# 	@users = User.find	
	# end 

	# def destroy
	# 	@users = User.find
	# end 

end
