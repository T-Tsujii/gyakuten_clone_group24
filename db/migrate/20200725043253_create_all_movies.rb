class CreateAllMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :all_movies do |t|
      t.string :title
      t.string :url
      t.string :category

      t.timestamps
    end
  end
end
