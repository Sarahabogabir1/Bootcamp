class ContactsController < ApplicationController
	def index #create an index to show all the contacts
		@contacts = Contact.order(created_at: :desc).limit(5)
		render :index
	end

	def new 
		@contacts = contacts
	end

	def create
    	render
  	end
end



