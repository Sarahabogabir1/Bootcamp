require_relative "post.rb"


class Blog
	attr_accessor :post
	def initialize (posts)
		@post = posts #declared empty array
	end
	
	def display_post
		
		@post.each do |i|
			puts i.title
			puts "*******"
			puts i.date
			puts "*******"
			puts i.text
			puts "------------------\n\n"
		end
	end
	#container first due to flow of code

	#def publush_front_page 
	#	first_post = (@____  - 1) * 3
	#	last_post = (first_post +3) -1 


end 

