class CreateFilmmakers < ActiveRecord::Migration[5.2]
  def change
    create_table :filmmakers do |t|
      t.string :name, null: false

      t.timestamps
    end
    add_index :filmmakers, :name
  end
end
