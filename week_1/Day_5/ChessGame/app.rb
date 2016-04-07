require_relative "lib/rook.rb"
require_relative "lib/queen.rb"
require_relative "lib/king.rb"
require_relative "lib/bishop.rb"
require_relative "lib/knight.rb"
#require_relative "lib/ChessValidator.rb"

# (1) Rook			
black_rook_left= Rook.new(1,8,"black") #I am assiging a start 
black_rook_right = Rook.new(8,8,"black")
white_rook_left = Rook.new(1,1,"white")
white_rook_right = Rook.new(8,1,"white")

# (2) King
white_king = King.new(1,4,"white") 
black_king = King.new(2,4,"black") 

#Q (3) Queen
white_queen = Queen.new(4,5,"white")
black_queen = Queen.new(1,4,"black")
 
# (4) Bishop
white_bishop = Bishop.new(4,5,"white")
black_bishop = Bishop.new(6,3,"black")

# (5) Knight
white_knight = Knight.new(7,1,"white")
black_knight = Knight.new(2,1,"black") 

#--------------ROOK-----------------------

puts "\nRook tests:"
puts "-----------------------------"
puts "These should be true"

#moving vertically down 
puts black_rook_left.move?(1,4) 

#moving horizontally right
puts black_rook_left.move?(6,8) 

puts "\nThese moves should be false:"
#diagonal L move
puts white_rook_right.move?(3,5)
#diagonal bishop movie 
puts white_rook_right.move?(5,5)

#------------KING---------------------------------------------
#white_king = King.new(1, 4, "white") #starting position
#black_king = King.new(4, 4, "black") 

puts "\nKing tests:"
puts "------------------------"
puts "These should be true:"

#  8 possible movements for the king
# Moving vertically down
puts white_king.move?(2, 4)
# Moving horizontally right (ignoring obstructions)
puts black_king.move?(2, 6)

puts "\nThese moves should be false:"
# Diagonal L move 1,4
puts white_king.move?(6,8) #false
# Diagonal Bishop move, 2,4
puts black_king .move?(8,5)

#-----------Queen-----------------------------------------------------------------

#white_queen = Queen.new(1, 4, "white") #starting position
#black_queen = Queen.new(4, 4, "black") 

puts "\nQueen tests:"
puts "-----------"
puts "These should be true:"
puts black_queen.move?(1,5)
puts white_queen.move?(4,7)


puts "\nThese moves should be false:" 
puts white_queen.move?(7,2)
puts black_queen.move?(2,6)

#----------Bishop---------

puts "\nBishop tests:"
puts "-----------"
puts "These should be true:"
puts black_bishop.move?(5,4)
puts white_bishop.move?(5,6)


puts "\nThese moves should be false:" 
puts white_bishop.move?(4,4)
puts black_bishop.move?(6,2)

#---------Knight----------

puts "\nKnight tests:"
puts "-----------"
puts "These should be true:"
puts white_knight.move?(6,3)
puts black_knight.move?(3,3)

puts "\nThese moves should be false:" 
puts white_knight.move?(5,3)
puts black_knight.move?(4,3)






