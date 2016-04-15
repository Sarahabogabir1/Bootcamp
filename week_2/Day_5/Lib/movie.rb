#attr_reader :

class Movies

	def search_title (title) #instance of the class movie
		imdb_search = Imdb::Search.new(title)
		array = imdb_search.movies[0..12]
		array_with_posters = []
		array.each do |movie|
			if movie.poster != nil && array_with_posters.length < 9 #keep going until you have 9 movies
				array_with_posters.push(movie)
			end
		end 
		array_with_posters
	end

	def random_movie
		return_one_value= array_with_posters.sample
		random_movie
	end
end 