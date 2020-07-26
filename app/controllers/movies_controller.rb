class MoviesController < ApplicationController

    def index
      if params[:category] == 'Money'
        movies = AllMovie.where(category: "Money")
        @movies = movies.page(params[:page]).per(12).all.order(id: "ASC")
      else
        @movies = Movie.page(params[:page]).per(12).all.order(id: "ASC")
      end
    end

    def update
      if params[:category] == true
        @movie = AllMovie.find(params[:id])
        if @movie.watched_movie == false
            @movie.watched_movie = true
        else
            @movie.watched_movie = false
        end
        @movie.save
        redirect_to all_movies_path(category: @movie.category)
      else
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

end