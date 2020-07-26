class AllMoviesController < ApplicationController

    def index
        if params[:category] == 'Money'
            monetize_movies = AllMovie.where(category: "Money")
            @movies = monetize_movies.page(params[:page]).per(12).all.order(id: "ASC")
        end
        # 上記と同じ様に記述すれば、categoryごとに場合分けが可能
    end

    def update
        @movie = AllMovie.find(params[:id])
        if @movie.watched_movie == false
            @movie.watched_movie = true
        else
            @movie.watched_movie = false
        end
        @movie.save
        redirect_to all_movies_path(category: @movie.category)
    end

end