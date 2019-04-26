# WELEARN BACKEND

...

## VARIABLES:
wework = Location.create(address: "81 Prospect St.", neighborhood: "DUMBO")
jj = User.create(role: "Student")
new_booking = Booking.create()
tom = User.create(role: "Tutor")

### USER (Student)
jj.student_sessions << booking
jj.student_sessions
  => Returns an array of Bookings
jj.student_sessions.first
  => Returns an instance of the first Booking of a 'student session'
jj.student_sessions.first.tutor
  => Returns an instance of the first instance of a User (Tutor Tom)
jj.tutors
  => Returns an array of the User's tutors (Tutor Tom) -- map over to return an array of strings
jj.student_sessions.first.location
  => Returns an instance of a Location

jj.locations (?) --> Returning an empty array. Why?


### USER (Tutor)
tom.tutor_sessions << booking
tom.tutor_sessions
  => Returns an array of Bookings
tom.students
  => Returns an array of Students
tom.locations
  => Returns an array of Locations

### BOOKING
new_booking
  => Returns an instance of the Booking
new_booking.student
  => Returns an instance of a User (Student JJ)
new_booking.student.firstname
  => Returns a string of an attribute (firstname) for Student JJ
new_booking.tutor
  => Returns an instance of a User (Tutor Tom)
new_booking.tutor.firstname
  => Returns a string of Tutor Tom's first name
new_booking.location 
  => Returns an instance of the booking's Location


### LOCATION
