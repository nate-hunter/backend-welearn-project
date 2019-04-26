class UserSerializer < ActiveModel::Serializer
  attributes :username, :firstname, :lastname, :age, :grade, :goal, :subject, :learning_disability, :learning_disability_type, :experience, :education, :price_per_hr, :specialty, :hires, :rating, :active, :role

  has_many :bookings
end
