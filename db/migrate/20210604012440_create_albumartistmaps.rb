class CreateAlbumartistmaps < ActiveRecord::Migration[6.1]
  def change
    create_table :albumartistmaps do |t|
      t.references :album, foreign_key: true, null: false
      t.references :artist, foreign_key: true, null: false

      t.timestamps
    end
  end
end
