class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.date :date
      t.time :time
      t.string :weather
      t.string :temperature
      t.references :track, null:false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
