#app.rb

require_relative "lib/bike.rb"
require_relative "lib/car.rb"
require_relative "lib/train.rb"

#so here Bike, Car, and Train are 
sarah_rides= Bike.new("wahhh",2) #sound and amount of wheels
alvaros_car=Car.new("BROOM", 4)
subway=Train.new("Chucuchuku", 10000)

