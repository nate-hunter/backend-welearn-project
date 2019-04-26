class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :location_id
      t.date :date
      t.time :time
      t.float :session_length
      t.integer :session_cost
      t.string :session_goal
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
