class MoviesController < ApplicationController

    def index
      default = ["Basic", "Git", "Ruby on Rails", "Ruby"]

      if params[:category].present?
        movies = Movie.where(category: params[:category]).order(id: "ASC")
        @movies = movies.page(params[:page]).per(12)
      else
        movies = Movie.where(category: default).order(id: "ASC")
        @movies = movies.page(params[:page]).per(12)
      end
    end

end