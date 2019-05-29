class User < ApplicationRecord
  has_secure_password

  validates :username, uniqueness: { case_sensitive: false }

  has_many :tutor_sessions, class_name: "Booking", foreign_key: :tutor_id
  has_many :student_sessions, class_name: "Booking", foreign_key: :student_id

  has_many :students, through: :tutor_sessions
  has_many :tutors, through: :student_sessions

  has_many :locations, through: :student_sessions
  has_many :locations, through: :tutor_sessions

end
