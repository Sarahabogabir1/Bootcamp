#Collection methods-> help you deal with arrays that contain many objects
#You are also going to want to loop through the array

class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]

# apprach not scallible if we had 100 homes
#puts homes [0].name
#puts homes [1].name
#puts homes [2].name
#puts homes [3].name
#puts homes [4].name
#puts homes [5].name

#This method allows us to execute some code with each item
# in the array. The cool thing about each and the rest of the
#collection methods is that they will automatically perform the 
#specified action with each item in the array, no matter if there are 10 items or 10,000.
homes.each do |hm|
	puts hm.name
end

#A common task in programming is taking an array of items and producing
# a new array with slightly different items. Let's say you need an array
#of cities from each of the homes
cities = homes.map do |hm|
	#return each home's city
  hm.city
end

puts cities

#takes an array and returns a second array of new items
#you map the original array into the new array. 

#use map 
prices = homes.map do |hm|
	hm.price
end

#getting the average prices of homes
total = prices.reduce(0.00) {|sum,x| sum + x}
avg = total / prices.length
puts avg

total_capacities = homes.reduce(0.0) do |sum, hm|
  sum + hm.capacity
end

puts "The average capacity is:"
puts total_capacities / homes.length

#Get the average capacity of our homes with an reduce
#the reduce method takes an array and returns a single value that
#that has been accumulated from every item on the array
# The total_capacities variable, the result of adding
# the capacities of each home, ends up being 16.0.

#---------------> Reduce itiration #1
# Accumulator takes the initial value
sum = 0.0
# First item in the array
hm = Home.new("Nizar's place", "San Juan", 2, 42)

# The return value of this iteration is 2.0
result = sum + hm.capacity


#---------------> Reduce itiration #2
#From this iteration on, the sum variable will always contain the result of the previous iteration. As before, hm will contain the next item of the array. 
#The result is now 7.0 (2.0 plus 5). In the next iteration, sum will be 7.0. 
sum = 2.0
# Second item in the array
hm = Home.new("Fernando's place", "Seville", 5, 47)

# The return value of this iteration is 7.0
result = sum + hm.capacity

#---------------> Reduce itiration #3
#The result is now 10.0 (7.0 plus 3). 
#In the next iteration, sum will be 10.0.
sum = 7.0
hm = Home.new("Josh's place", "Pittsburgh", 3, 41)

# The return value of this iteration is 10.0
result = sum + hm.capacity

#---------------> Reduce itiration #4
#The result is now 12.0 (10.0 plus 2). 
#In the next iteration, sum will be 12.0
sum = 12.0
hm = Home.new("Gonzalo's place", "Málaga", 2, 45)

# The return value of this iteration is 12.0
result = sum + hm.capacity

#---------------> Reduce itiration #5
#The result is now 16.0 (12.0 plus 4). This is the final iteration so this iteration's
#return value becomes the return value for the entire reduce.
sum = 12.0
hm = Home.new("Ariel's place", "San Juan", 4, 49)

# The return value of this iteration is 16.0
result = sum + hm.capacity

####-------> Terminal Air Bnb

#1 create home class 
#aatr_reader allows us to access 
















