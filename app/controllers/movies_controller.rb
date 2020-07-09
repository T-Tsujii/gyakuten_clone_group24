class MoviesController < ApplicationController

    def index
      @movies = Movie.page(params[:page]).per(12)
    end

end