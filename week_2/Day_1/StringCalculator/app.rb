
require_relative "lib/string_calculator.rb"
calculator = StringCalculator.new

puts calculator.add( "1,2,3,4" ) == 13 #returns the sum for the multiple numbers
puts calculator.add( "25,25,25" ) == 75

puts calculator.add( "5" ) == 5
puts calculator.add( "3" ) == 3

puts calculator.add( "" ) == 0

