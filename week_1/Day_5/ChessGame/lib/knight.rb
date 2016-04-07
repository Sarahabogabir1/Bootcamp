
class Knight
	attr_accessor(:y_coordinate,:x_coordinate,:color)
	
	def initialize (x_coordinate,y_coordinate,color)
		@x_coordinate=x_coordinate
		@y_coordinate=y_coordinate
		@color=color
	end 

	def move? (x_destination, y_destination)
		if (y_destination == @y_coordinate +2 || y_destination == @y_coordinate -2) && (x_destination == @x_coordinate + 1 || x_destination == @x_coordinate -1)
			true
		elsif (x_destination == @x_coordinate +2 || x_destination == @x_coordinate -2) && (y_destination == @y_coordinate +1 || y_destination == @y_coordinate -1)
			true 
		else
			# any other movement			
			false
		end
	end
end 