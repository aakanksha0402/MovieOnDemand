class CreateLanguageMovies < ActiveRecord::Migration
  def change
    create_table :language_movies do |t|
      t.references :language, index: true, foreign_key: true
      t.references :movie, index: true, foreign_key: true
    end
  end
end
