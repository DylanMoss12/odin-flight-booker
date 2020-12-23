class CreatePassengers < ActiveRecord::Migration[6.0]
  def change
    create_table :passengers do |t|
      t.string :passenger_name
      t.string :email
      t.integer :booking_id

      t.timestamps
    end
  end
end
