
class Queen
	attr_accessor(:y_coordinate,:x_coordinate,:color)
	
	def initialize (x_coordinate,y_coordinate,color)
		@x_coordinate=x_coordinate
		@y_coordinate=y_coordinate
		@color=color
	end 

	def move? (x_destination, y_destination)
		if y_destination != @y_coordinate && x_destination != @x_coordinate
			false
		elsif x_destination == @x_coordinate && y_destination != @y_coordinate 
			true 
		elsif y_destination == @y_coordinate && x_destination != @x_coordinate
			true 
		else
			# any other movement			
			false
		end
	end
end 