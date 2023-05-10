User.destroy_all
u1 = User.create :username => 'yurrr'
u2 = User.create :username => 'user'
puts "#{ User.count } users"

Airplane.destroy_all
a1 = Airplane.create :flight_id => 1, :column => 'A B C D E F', :rows => '1 2 3 4 5 6'
a2 = Airplane.create :flight_id => 2, :column => 'A B C D E F', :rows => '1 2 3 4 5 6'
a3 = Airplane.create :flight_id => 3, :column => 'A B C D E F', :rows => '1 2 3 4 5 6'
a4 = Airplane.create :flight_id => 4, :column => 'A B C D E F', :rows => '1 2 3 4 5 6'
a5 = Airplane.create :flight_id => 5, :column => 'A B C D E F', :rows => '1 2 3 4 5 6'
a6 = Airplane.create :flight_id => 6, :column => 'A B C D E F', :rows => '1 2 3 4 5 6'
a7 = Airplane.create :flight_id => 7, :column => 'A B C D E F', :rows => '1 2 3 4 5 6'
a8 = Airplane.create :flight_id => 8, :column => 'A B C D E F', :rows => '1 2 3 4 5 6'
a9 = Airplane.create :flight_id => 9, :column => 'A B C D E F', :rows => '1 2 3 4 5 6'
a10 = Airplane.create :flight_id => 5, :column => 'A B C D E F', :rows => '1 2 3 4 5 6'
a11 = Airplane.create :flight_id => 6, :column => 'A B C D E F', :rows => '1 2 3 4 5 6'
a12 = Airplane.create :flight_id => 7, :column => 'A B C D E F', :rows => '1 2 3 4 5 6'
a13 = Airplane.create :flight_id => 8, :column => 'A B C D E F', :rows => '1 2 3 4 5 6'
a14 = Airplane.create :flight_id => 9, :column => 'A B C D E F', :rows => '1 2 3 4 5 6'
a15 = Airplane.create :flight_id => 5, :column => 'A B C D E F', :rows => '1 2 3 4 5 6'
a16 = Airplane.create :flight_id => 6, :column => 'A B C D E F', :rows => '1 2 3 4 5 6'
a17 = Airplane.create :flight_id => 7, :column => 'A B C D E F', :rows => '1 2 3 4 5 6'
puts "#{ Airplane.count } airplanes"

Flight.destroy_all

f1 = Flight.create :airplane_id => 1, :to => 'New York', :from => 'London', :date => '2023-06-01', :seats => 10
f2 = Flight.create :airplane_id => 1, :to => 'New York', :from => 'London', :date => '2023-06-01', :seats => 28
f3 = Flight.create :airplane_id => 1, :to => 'New York', :from => 'London', :date => '2023-06-01', :seats => 120
f4 = Flight.create :airplane_id => 2, :to => 'Paris', :from => 'London', :date => '2023-07-15', :seats => 90
f5 = Flight.create :airplane_id => 3, :to => 'Paris', :from => 'London', :date => '2023-08-20', :seats => 200
f6 = Flight.create :airplane_id => 4, :to => 'Paris', :from => 'New York', :date => '2023-09-10', :seats => 150
f7 = Flight.create :airplane_id => 5, :to => 'Sydney', :from => 'Paris', :date => '2023-10-12', :seats => 70
f8 = Flight.create :airplane_id => 6, :to => 'Sydney', :from => 'Paris', :date => '2023-11-15', :seats => 80
f9 = Flight.create :airplane_id => 7, :to => 'Sydney', :from => 'London', :date => '2023-12-20', :seats => 100
f10 = Flight.create :airplane_id => 8, :to => 'San Fransico', :from => 'New York', :date => '2024-01-05', :seats => 180
f11 = Flight.create :airplane_id => 9, :to => 'San Fransico', :from => 'New York', :date => '2024-02-20', :seats => 90
f12 = Flight.create :airplane_id => 10, :to => 'San Fransico', :from => 'New York', :date => '2024-03-25', :seats => 120
f13 = Flight.create :airplane_id => 11, :to => 'London', :from => 'New York', :date => '2024-04-15', :seats => 200
f14 = Flight.create :airplane_id => 12, :to => 'London', :from => 'Paris', :date => '2024-05-20', :seats => 80
f15 = Flight.create :airplane_id => 13, :to => 'London', :from => 'New York', :date => '2024-06-15', :seats => 70
f16 = Flight.create :airplane_id => 14, :to => 'Paris', :from => 'London', :date => '2024-07-18', :seats => 120
f17 = Flight.create :airplane_id => 15, :to => 'Paris', :from => 'New York', :date => '2024-08-22', :seats => 99
puts "#{ Flight.count } flights"

Reservation.destroy_all
r1 = Reservation.create :flight_id => 1, :user_id => u1.id
r2 = Reservation.create :flight_id => 2, :user_id => u2.id
r3 = Reservation.create :flight_id => 3, :user_id => u1.id
r4 = Reservation.create :flight_id => 4, :user_id => u1.id
r5 = Reservation.create :flight_id => 5, :user_id => u2.id
r6 = Reservation.create :flight_id => 6, :user_id => u1.id
r7 = Reservation.create :flight_id => 7, :user_id => u1.id
r8 = Reservation.create :flight_id => 8, :user_id => u2.id
r9 = Reservation.create :flight_id => 9, :user_id => u1.id
r10 = Reservation.create :flight_id => 10, :user_id => u1.id
r11 = Reservation.create :flight_id => 11, :user_id => u2.id
r12 = Reservation.create :flight_id => 12, :user_id => u1.id
r13 = Reservation.create :flight_id => 13, :user_id => u1.id
r14 = Reservation.create :flight_id => 14, :user_id => u2.id
r15 = Reservation.create :flight_id => 15, :user_id => u1.id
r16 = Reservation.create :flight_id => 16, :user_id => u1.id
r17 = Reservation.create :flight_id => 17, :user_id => u2.id
puts "#{ Reservation.count } reservations"

puts "Flights and Airplanes"
f1.airplane << a1
f2.airplane << a2
f3.airplane << a3
f4.airplane << a4
f5.airplane << a5
f6.airplane << a6
f7.airplane << a7
f8.airplane << a8
f9.airplane << a9
f10.airplane << a10
f11.airplane << a11
f12.airplane << a12
f13.airplane << a13
f14.airplane << a14
f15.airplane << a15
f16.airplane << a16
f17.airplane << a17

puts "Reservations and Users"
u1.reservations << r1
u1.reservations << r3
u2.reservations << r2
u1.reservations << r5
u1.reservations << r4
u2.reservations << r6
u1.reservations << r8
u1.reservations << r9
u2.reservations << r7
u1.reservations << r10
u1.reservations << r12
u2.reservations << r11