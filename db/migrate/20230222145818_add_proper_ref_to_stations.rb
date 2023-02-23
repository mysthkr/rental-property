class AddProperRefToStations < ActiveRecord::Migration[6.0]
  def change
    add_reference :stations, :proper, foreign_key: true
  end
end
