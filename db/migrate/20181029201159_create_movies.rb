class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.references :genre, foreign_key: true
      t.references :country, foreign_key: true
      t.string :style
      t.string :state
      t.integer :year
      t.integer :category, null: false, default: 0
      t.integer :length_in_minutes, null: false
      t.integer :rating, null: false, default: 0
      t.integer :director_id
      t.integer :screenwriter_id
      t.text :synopsis
      t.string :accessibility_options
      t.string :special_collection
      t.string :rack, null: false
      t.string :shelf, null: false

      t.timestamps null: false
    end
    add_index :movies, :title
    add_index :movies, :category
    add_index :movies, :rating
    add_index :movies, :rack
    add_index :movies, :shelf
  end
end
