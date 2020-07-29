class WatchedMoviesController < ApplicationController

    def create
        @movie = Movie.find(params[:movie_id])
        watched = current_user.watched_movies.build(movie_id: params[:movie_id])
        watched.save
        
    end

    def destroy
        @movie = Movie.find(params[:movie_id])
        watched = WatchedMovie.find_by(movie_id: params[:movie_id], user_id: current_user.id)
        watched.delete
        
    end
end