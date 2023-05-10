<<<<<<< HEAD
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=======
>>>>>>> 87ba2badf923be2799c24cbfa826b1fd8f991722
User.destroy_all
u1 = User.create :username => 'jonesy'
u2 = User.create :username => 'craigsy'
puts "#{ User.count } users"

Airplane.destroy_all
a1 = Airplane.create :flight_id => 1, :column => 'A B C D E F', :rows => '1 2 3 4 5 6'
a2 = Airplane.create :flight_id => 2, :column => 'A B C D E F', :rows => '1 2 3 4 5 6'
a3 = Airplane.create :flight_id => 3, :column => 'A B C D E F', :rows => '1 2 3 4 5 6'
puts "#{ Airplane.count } airplanes"

Flight.destroy_all
f1 = Flight.create :airplane_id => 1, :to => 'New York', :from => 'London', :date => '2023-06-01', :seats => 120
f2 = Flight.create :airplane_id => 2, :to => 'Paris', :from => 'London', :date => '2023-07-15', :seats => 90
f3 = Flight.create :airplane_id => 3, :to => 'Sydney', :from => 'London', :date => '2023-08-20', :seats => 200
puts "#{ Flight.count } flights"

Reservation.destroy_all
r1 = Reservation.create :flight_id => 1, :user_id => u1.id
r2 = Reservation.create :flight_id => 2, :user_id => u2.id
r3 = Reservation.create :flight_id => 3, :user_id => u1.id
puts "#{ Reservation.count } reservations"

puts "Flights and Airplanes"
f1.airplane = a1
f2.airplane = a2
f3.airplane = a3

puts "Reservations and Users"
u1.reservations << r1
u1.reservations << r3
u2.reservations << r2