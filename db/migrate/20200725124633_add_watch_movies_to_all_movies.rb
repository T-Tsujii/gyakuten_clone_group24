class AddWatchMoviesToAllMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :all_movies, :watched_movie, :boolean, default: false
  end
end
