class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.string :line_name
      t.string :station_name
      t.integer :minute_walk

      t.timestamps
    end
  end
end
