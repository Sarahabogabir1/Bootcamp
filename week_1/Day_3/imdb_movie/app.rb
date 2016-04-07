
require "imdb"

search = Imdb::Search.new("The Godfather")
# Grab the first result of the search.movies array
the_movie = search.movies[0]

puts the_movie.title
puts the_movie.rating
puts "the_movie's class is #{the_movie.class}"

puts "\n-----------------------\n"

search = Imdb::Search.new("Batman vs. Superman")
# Grab the first result of the search.movies array
the_movie = search.movies[0]

puts the_movie.title
puts the_movie.rating