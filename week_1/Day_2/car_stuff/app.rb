# app.rb
require_relative "lib/car.rb"

my_car = Car.new("Black", "BMW" , "E46" , "+168", "Broom")
my_car.rev

my_dream_car = Car.new( "white", "Maserati","L", "0", "RRAMMM-RRAMMM")
my_dream_car.rev #this will only make the sound work

my_dream_car.visits_city("Miami")
my_dream_car.visits_city("Fort Lauderdale")
my_dream_car.visits_city("Tampa")

my_car.print_cities