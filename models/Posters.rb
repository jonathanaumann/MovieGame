
require("imdb")
class Posters
	attr_accessor :the_search, :posters 
	def initialize(search_word)
		@the_search= Imdb::Search.new(search_word).movies[0...20]
		@posters =[]
		
	end

	def posters 
		counter = 0 
	
		while @posters.length < 9 
			
		movie = @the_search[counter]

		if movie.poster != nil
		@posters.push(movie)
		end
		counter +=1 
		end

		return @posters
	end
	def get_sample
		@posters.sample
	end

end
