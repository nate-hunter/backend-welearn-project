class UserSerializer < ActiveModel::Serializer
  attributes :student_id, :tutor_id, :location_id, :date, :time, :session_length, :session_cost, :session_goal, :available
end
