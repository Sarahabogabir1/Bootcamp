require"sinatra"
require"sinatra/reloader" if development?
require"imdb"
require_relative"lib/movie.rb"

# get "/"
# 	erb:(home)
# end 
search = Movies.new

get "/home" do #what user will type in search bar
	erb :home
end 

post "/search" do #this is the same as 
	the_title =params[:search_title] #passed as argument
	@arr_movies = search.search_title(the_title) #or params..
	erb :poster_page #needs to be tied to the name of the file 
end

# redirect to ("/")
