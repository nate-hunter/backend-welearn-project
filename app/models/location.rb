class Location < ApplicationRecord
  has_many :bookings
  has_many :students, through: :bookings
  has_many :tutors, through: :bookings
end
