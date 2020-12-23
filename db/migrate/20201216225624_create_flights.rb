class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.integer :start_id
      t.integer :end_id
      t.datetime :departure_time
      t.string :flight_time

      t.timestamps
    end
  end
end
