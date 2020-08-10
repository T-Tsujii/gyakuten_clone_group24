class MoviesController < ApplicationController

    def index
      if params[:category].present?
        movies = Movie.where(category: params[:category]).order(id: "ASC")
        @movies = movies.page(params[:page]).per(12)
      else
        @movies_all = Movie.where(category: "Basic").order(id: "ASC")
        @movies = @movies_all.page(params[:page]).per(12)
      end
    end

end