class MoviesController < ApplicationController

    def index
      if params[:category] == "Money"
        movies = Movie.where(category: "Money").order(id: "ASC")
        @movies = movies.page(params[:page]).per(12)
      else
        movies = Movie.where(category: nil).order(id: "ASC")
        @movies = movies.page(params[:page]).per(12)
      end
    end

end