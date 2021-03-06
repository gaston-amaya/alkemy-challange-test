class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :picture
      t.string :title
      t.string :creationdate
      t.integer :rating
      t.references :genre, null: false, foreign_key: true
      t.timestamps
    end
  end
end
