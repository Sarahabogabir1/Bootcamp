
class Post
	attr_accessor :title, :date, :text

	def initialize (title, date, text) 
		@title = title #this is an instance variable for the whole class
		@date = date
		@text = text
	end

	#def display
		#puts "#{@title}"
		#puts "***********"
		#puts "#{text}"
		#puts "----------"
		#puts ""

end
