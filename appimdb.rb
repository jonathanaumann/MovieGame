require("imdb")
require "sinatra"
require "sinatra/reloader"
require_relative("models/Posters.rb")




#an array of results
# first_result= the_search.movies[0]

# puts "Total of #{the_search.movies.length} results"
# puts "First result:"
# puts first_result.title
# puts first_result.rating 

get "/" do 

	erb(:home)
	end


post "/search" do
	# @the_search= Imdb::Search.new(params[:search_word]).movies[0...20]
	# @posters =[]
	# @answer = @the_search.sample

	# counter = 0 
	
	# 	while @posters.length < 9 
			
	# 	movie = @the_search[counter]

	# 	if movie.poster != nil
	# 	@posters.push(movie.poster)
	# 	end
	# 	counter +=1 
	# end
@POSTS = Posters.new(params[:search_word])
@POSTERS= @POSTS.posters 
@answer1 = @POSTS.get_sample
 

  erb(:results)
end
post "/answer" do 

	 

 	if params[:answer] == params[:answer_user]
 		erb(:correct)
 	
 	else
 		erb(:incorrect)
 	end
end







