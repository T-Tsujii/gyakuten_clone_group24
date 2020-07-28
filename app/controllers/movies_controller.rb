class MoviesController < ApplicationController

    def index
      if params[:category] == "Money"
        movies = Movie.where(category: "Money")
        @movies = movies.page(params[:page]).per(12).all.order(id: "ASC")
      else
        @movies = Movie.page(params[:page]).per(12).all.order(id: "ASC")
      end
    end

end