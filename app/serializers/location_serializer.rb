class LocationSerializer < ActiveModel::Serializer
  attributes :address, :neighborhood, :full_address

  has_many :bookings
end
