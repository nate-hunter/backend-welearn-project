class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :firstname, :lastname, :age, :grade, :goal, :subject, :learning_disability, :learning_disability_type, :experience, :education, :price_per_hr, :specialty, :hires, :rating, :active, :role

  # has_many :bookings
  has_many :locations
  has_many :students
  has_many :tutors

  has_many :tutor_sessions
  has_many :student_sessions
end
