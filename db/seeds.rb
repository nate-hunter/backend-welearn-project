require 'faker'
require_relative '../lib/scraper.rb'

User.destroy_all
Location.destroy_all
Booking.destroy_all

student_goals = [
  "Get better grades",
  "Pass an important exam",
  "Prepare for SAT/SSAT",
  "Gain better proficiency in a subject struggling with"
]

subjects_tutored = [
  "Math",
  "Science",
  "Reading",
  "Writing",
  "Programming"
]

weworks = scraper_address
weworks.each do |wework|
  Location.create(address: wework)
end

80.times do
  User.create(
    role: "Tutor",
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    age: rand(22..60),
    experience: rand(1..20),
    education: Faker::Educator.degree,
    price_per_hr: rand(50..150),
    specialty: subjects_tutored.sample,
    hires: rand(2..150)
  )
end

65.times do
  Booking.create(
    tutor_id: User.all.sample.id,
    location_id: Location.all.sample.id,
    date: Faker::Date.between(Date.today, 50.days.from_now),
    time: Faker::Time.forward(14, :evening),
    session_goal: student_goals.sample
  )
end

puts "Locations: #{Location.all.count} | Users: #{User.all.count} | Bookings: #{Booking.all.count}"
