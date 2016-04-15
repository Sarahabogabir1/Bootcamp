require"imdb"
require"sinatra"
require"sinatra/reloader" if development?

require_relative"lib/movie.rb"

get "/"
	erb:(home)
end 

search = Movies.new

#look from users persective
#the goal is to have the most minimal information here

get "/home" do #what user will type in search bar
	erb :home
end 

post "/search" do #send info to server, user enters info
	the_title =params[:search_title] #passed as argument
	@arr_movies = search.search_title(the_title) #or params..
	erb :poster_page #needs to be tied to the name of the file 
end

# redirect to ("/")
