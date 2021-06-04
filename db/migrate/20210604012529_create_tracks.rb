class CreateTracks < ActiveRecord::Migration[6.1]
  def change
    create_table :tracks do |t|
      t.string :title
      t.references :album, null: false, foreign_key: true

      t.timestamps
    end
  end
end
