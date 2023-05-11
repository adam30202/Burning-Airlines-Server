User.destroy_all
u1 = User.create :username => 'jonesy'
u2 = User.create :username => 'craigsy'
puts "#{ User.count } users"

Airplane.destroy_all
a1 = Airplane.create :column => '1', :rows => '1'
a2 = Airplane.create :column => '2', :rows => '2'
a3 = Airplane.create :column => '3', :rows => '3'
a4 = Airplane.create :column => '4', :rows => '4'
a5 = Airplane.create :column => '5', :rows => '5'
a6 = Airplane.create :column => '6', :rows => '6'
a7 = Airplane.create :column => '7', :rows => '7'
a8 = Airplane.create :column => '8', :rows => '8'
a9 = Airplane.create :column => '9', :rows => '9'
a10 = Airplane.create :column => '10', :rows => '10'
a11 = Airplane.create :column => '11', :rows => '11'
a12 = Airplane.create :column => '12', :rows => '12'
a13 = Airplane.create :column => '13', :rows => '13'
a14 = Airplane.create :column => '14', :rows => '14'
a15 = Airplane.create :column => '15', :rows => '15'
a16 = Airplane.create :column => '16', :rows => '16'
a17 = Airplane.create :column => '17', :rows => '17'
puts "#{ Airplane.count } airplanes"

Flight.destroy_all
f1 = Flight.create :airplane_id => a1.id, :to => 'New York', :from => 'London', :date => '2023-06-01', :seats => 10
f2 = Flight.create :airplane_id => a2.id, :to => 'New York', :from => 'London', :date => '2023-06-01', :seats => 28
f3 = Flight.create :airplane_id => a3.id, :to => 'New York', :from => 'London', :date => '2023-06-01', :seats => 120
f4 = Flight.create :airplane_id => a4.id, :to => 'Paris', :from => 'London', :date => '2023-07-15', :seats => 90
f5 = Flight.create :airplane_id => a5.id, :to => 'Paris', :from => 'London', :date => '2023-08-20', :seats => 200
f6 = Flight.create :airplane_id => a6.id, :to => 'Paris', :from => 'New York', :date => '2023-09-10', :seats => 150
f7 = Flight.create :airplane_id => a7.id, :to => 'Sydney', :from => 'Paris', :date => '2023-10-12', :seats => 70
f8 = Flight.create :airplane_id => a8.id, :to => 'Sydney', :from => 'Paris', :date => '2023-11-15', :seats => 80
f9 = Flight.create :airplane_id => a9.id, :to => 'Sydney', :from => 'London', :date => '2023-12-20', :seats => 100
f10 = Flight.create :airplane_id => a10.id, :to => 'San Fransico', :from => 'New York', :date => '2024-01-05', :seats => 180
f11 = Flight.create :airplane_id => a11.id, :to => 'San Fransico', :from => 'New York', :date => '2024-02-20', :seats => 90
f12 = Flight.create :airplane_id => a12.id, :to => 'San Fransico', :from => 'New York', :date => '2024-03-25', :seats => 120
f13 = Flight.create :airplane_id => a13.id, :to => 'London', :from => 'New York', :date => '2024-04-15', :seats => 200
f14 = Flight.create :airplane_id => a14.id, :to => 'London', :from => 'Paris', :date => '2024-05-20', :seats => 80
f15 = Flight.create :airplane_id => a15.id, :to => 'London', :from => 'New York', :date => '2024-06-15', :seats => 70
f16 = Flight.create :airplane_id => a16.id, :to => 'Paris', :from => 'London', :date => '2024-07-18', :seats => 120
f17 = Flight.create :airplane_id => a17.id, :to => 'Paris', :from => 'New York', :date => '2024-08-22', :seats => 99
puts "#{ Flight.count } flights"

Reservation.destroy_all
r1 = Reservation.create :flight_id => f1.id, :user_id => u1.id
r2 = Reservation.create :flight_id => f2.id, :user_id => u2.id
r3 = Reservation.create :flight_id => f3.id, :user_id => u1.id
r4 = Reservation.create :flight_id => f4.id, :user_id => u1.id
r5 = Reservation.create :flight_id => f5.id, :user_id => u2.id
r6 = Reservation.create :flight_id => f6.id, :user_id => u1.id
r7 = Reservation.create :flight_id => f7.id, :user_id => u1.id
r8 = Reservation.create :flight_id => f8.id, :user_id => u2.id
r9 = Reservation.create :flight_id => f9.id, :user_id => u1.id
r10 = Reservation.create :flight_id => f10.id, :user_id => u1.id
r11 = Reservation.create :flight_id => f11.id, :user_id => u2.id
r12 = Reservation.create :flight_id => f12.id, :user_id => u1.id
r13 = Reservation.create :flight_id => f13.id, :user_id => u1.id
r14 = Reservation.create :flight_id => f14.id, :user_id => u2.id
r15 = Reservation.create :flight_id => f15.id, :user_id => u1.id
r16 = Reservation.create :flight_id => f16.id, :user_id => u1.id
r17 = Reservation.create :flight_id => f17.id, :user_id => u2.id
puts "#{ Reservation.count } reservations"

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
puts "Associations complete"
