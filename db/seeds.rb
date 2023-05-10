User.destroy_all
u1 = User.create :username => 'jonesy'
u2 = User.create :username => 'craigsy'
puts "#{ User.count } users"

Airplane.destroy_all
a1 = Airplane.create :column => 'A B C D E F', :rows => '1 2 3 4 5 6'
a2 = Airplane.create :column => 'A B C D E F', :rows => '1 2 3 4 5 6'
a3 = Airplane.create :column => 'A B C D E F', :rows => '1 2 3 4 5 6'
puts "#{ Airplane.count } airplanes"

Flight.destroy_all
f1 = Flight.create :to => 'New York', :from => 'London', :date => '2023-06-01', :seats => 120
f2 = Flight.create :to => 'Paris', :from => 'London', :date => '2023-07-15', :seats => 90
f3 = Flight.create :to => 'Sydney', :from => 'London', :date => '2023-08-20', :seats => 200
puts "#{ Flight.count } flights"

Reservation.destroy_all
r1 = Reservation.create :user_id => u1.id
r2 = Reservation.create :user_id => u2.id
r3 = Reservation.create :user_id => u1.id
puts "#{ Reservation.count } reservations"

puts "Flights and Airplanes"
f1.airplane << a1
f2.airplane << a2
f3.airplane << a3

puts "Reservations and Users"
u1.reservations << r1
u1.reservations << r3
u2.reservations << r2
