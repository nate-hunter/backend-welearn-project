class BookingSerializer < ActiveModel::Serializer
  attributes :id, :student_id, :tutor_id, :location_id, :date, :time, :session_length, :session_cost, :session_goal, :available
  belongs_to :location

  belongs_to :tutor
end
