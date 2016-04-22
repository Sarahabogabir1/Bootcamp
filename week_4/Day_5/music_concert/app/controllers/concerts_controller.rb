class ConcertsController < ApplicationController
	def index
		@concerts_today = Concert.where(date: Time.now.midnight)
		@concerts_upcoming = Concert.where('date > ?',Time.now.midnight)
		render 'index'
	end 

	# def show
	# 	@
	# end


end
