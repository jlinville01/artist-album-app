class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :star_rating
      t.integer :year_released
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
