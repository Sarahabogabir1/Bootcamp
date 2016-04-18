class SiteController < ApplicationController #inheritance
	def home
		render 'home' #name of the view template
	end

	def contact
		render 'contact'
	end
end
