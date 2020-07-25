class MoviesController < ApplicationController

    def index
      
      @movies = Movie.page(params[:page]).per(12).all.order(id: "ASC")
    end

    def update
      @movie = Movie.find(params[:id])
      if @movie.watched_movie == false
        @movie.watched_movie = true
      else
        @movie.watched_movie = false
      end
        @movie.save
        redirect_to root_path
    end

end