class WatchedMoviesController < ApplicationController

    def create
        watched = current_user.watched_movies.build(movie_id: params[:movie_id])
        watched.save
        redirect_to movies_path
    end

    def destroy
        watched = WatchedMovie.find_by(movie_id: params[:movie_id], user_id: current_user.id)
        watched.delete
        redirect_to movies_path
    end
end