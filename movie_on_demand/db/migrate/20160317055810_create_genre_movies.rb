class CreateGenreMovies < ActiveRecord::Migration
  def change
    create_table :genre_movies do |t|
      t.references :genre, index: true, foreign_key: true
      t.references :movie, index: true, foreign_key: true
    end
  end
end
