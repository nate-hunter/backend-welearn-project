class Booking < ApplicationRecord
  belongs_to :location
  belongs_to :student, foreign_key: :student_id, class_name: "User", optional: true
  belongs_to :tutor, foreign_key: :tutor_id, class_name: "User", optional: true
end
