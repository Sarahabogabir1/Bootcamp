#Exercise METHOD: each

classmates = ["Andreza", "Alvaro", "Mike"]
classmates.each do |mate|
	puts item "Hello" + mate
end

#Exercise METHOD: map 

cities = []
["bangkok", "miami", "santiago", "richmond"].each do |item|
	cities.push(item+1)
end

#second example-Solution:
cities

pretty_cities = cities.map {|city| city.capitalize}


#third METHOD: Reduce-Transforms a collection into a single value
#applying a block of code many times

[1,2,3].reduce{\|sum,x| sum + x}
#received two arguments, here is the x
#sum: is a variable that represents the value so far
#as I am going and adding to what I have so far, sum represents what
#I have so far 
#Snake the Sum like the game, it keeps growing and growing and at the end you get it back
# x is the current item of the array so far 

###########
#Nizar explanation: You can plug in any value
Step 1: Sum = 0
			x = 2
Step 2: Sum = 2
		x = 8 + (2)
Step 3: Sum = 10
		x = 13 --> my final value 

