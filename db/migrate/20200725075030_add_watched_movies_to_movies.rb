class AddWatchedMoviesToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :watched_movie, :boolean, default: false
  end
end
