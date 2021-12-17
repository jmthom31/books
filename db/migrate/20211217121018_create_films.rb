class CreateFilms < ActiveRecord::Migration[6.1]
  def change
    create_table :films do |t|
      t.string :name
      t.float :imdb_rating
      t.string :recommended_by
      t.boolean :complete, default: false
      t.timestamps
    end
  end
end
