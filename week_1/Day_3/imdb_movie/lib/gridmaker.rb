class Gridmaker
	def initialize
		@movies =[10,9,10,8,7,5,9]
	end

	def make_grid
	gri = " "
	10.downto(1).each do | i |
		@movies.each do | movie_rating |
		 if movie_rating >= i
		 	grid += "X  |"
		 else 
		 	grid += "   |"
		end
	end
	grid +="\n"
	end
	grid += ("-" * 4) * @movies.lenght
	puts grid 
	ennd
end

