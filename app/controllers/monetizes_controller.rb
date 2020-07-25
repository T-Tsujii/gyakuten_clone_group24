class MonetizesController < ApplicationController

    def index
        monetize_movies = AllMovie.where(category: "Money")
        @movies = monetize_movies.page(params[:page]).per(12).all.order(id: "ASC")

    end

    def update
        @movie = AllMovie.find(params[:id])
        if @movie.watched_movie == false
            @movie.watched_movie = true
        else
            @movie.watched_movie = false
        end
            @movie.save
            redirect_to monetizes_path
    end

end