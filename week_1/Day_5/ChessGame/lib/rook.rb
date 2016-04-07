
class Rook
	attr_accessor(:y_coordinate,:x_coordinate,:color)
	
	# Rook.new(           1,            8,   "black")
	#                     |             |       |
	#                     v             v       v
	def initialize (x_coordinate,y_coordinate,color)
		@x_coordinate=x_coordinate
		@y_coordinate=y_coordinate
		@color=color
	end 
	
	# wr_right.move?(6,             2)
	#                |              |
	#                v              v
	def move? (x_destination, y_destination)
		# 2 options
		# When is does it return true?
		if x_destination == @x_coordinate && y_destination != @y_coordinate
			# vertical
				# x stays the same
				# y changes
			true 
		elsif y_destination == @y_coordinate && x_destination != @x_coordinate
			# horizontal
				# y stays the same
				# x changes
			true

		# When is does it return false?
		else
			# any other movemente			
			false
		end
	end 

end 