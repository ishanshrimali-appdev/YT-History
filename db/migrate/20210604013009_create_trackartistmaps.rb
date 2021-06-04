class CreateTrackartistmaps < ActiveRecord::Migration[6.1]
  def change
    create_table :trackartistmaps do |t|
      t.references :track, foreign_key: true, null: false
      t.references :artist, foreign_key: true, null: false

      t.timestamps
    end
  end
end
