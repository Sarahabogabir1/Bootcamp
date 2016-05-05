
class Post
	attr_accessor :title, :date, :text

	def initialize (title, date, text) 
		@title = title #this is an instance variable for the whole class
		@date = date #instance variable  no @ is a local variable 
		@text = text
	end


	#def display
		#puts "#{@title}"
		#puts "***********"
		#puts "#{text}"
		#puts "----------"
		#puts ""

end
