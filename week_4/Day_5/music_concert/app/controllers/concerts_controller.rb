class ConcertsController < ApplicationController
	def index
		@concerts = Concert.where(date: Time.now)
		render 'index'
	end 

	# def show
	# 	@
	# end


end
