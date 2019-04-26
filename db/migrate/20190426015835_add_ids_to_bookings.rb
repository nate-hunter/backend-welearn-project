class AddIdsToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :student_id, :integer
    add_column :bookings, :tutor_id, :integer
  end
end
