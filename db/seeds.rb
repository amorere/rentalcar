# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Booking.destroy_all
Car.destroy_all
User.destroy_all

puts "creando usuarios"
user1 = User.create!(email: "julif@gmail.com", password: "123456", name: "Julian", last_name: "Fernandez", cell_phone: "1134567890", address: "Av. Rivadavia 1234", birth_date: "1990-01-01", dni: "12345678", driver_licence_id: "12345678")

user2 = User.create!(email: "fiore@gmail.com", password: "6325435", name: "Fiorella", last_name: "Albujar", cell_phone: "13544567890", address: "Av. Copiapo 1234", birth_date: "1992-03-10", dni: "2342563", driver_licence_id: "7567452")

# create cars
puts "creando autos"
car1 = Car.create!(model: "Clio", brand: "Renault", kms: 100000, year: "2010-01-01", plate: "ABC123", color: "Rojo", capacity: "5", load: "500", transmission: "Manual", technical_approval: true, insurance: true, performance: "1.6", user: user1)

car2 = Car.create!(model: "Megane", brand: "Renault", kms: 400000, year: "2015-02-32", plate: "ABC435", color: "Azul", capacity: "4", load: "320", transmission: "Manual", technical_approval: true, insurance: true, performance: "1.6", user: user2)

car3 = Car.create!(model: "Dino", brand: "Ferrari", kms: 100000, year: "1980-02-22", plate: "ABC915", color: "Rojo", capacity: "4", load: "220", transmission: "Manual", technical_approval: true, insurance: true, performance: "1.6", user: user2)

car4 = Car.create!(model: "x3", brand: "BMW", kms: 500000, year: "2005-02-10", plate: "DPR435", color: "Azul", capacity: "5", load: "320", transmission: "Manual", technical_approval: true, insurance: true, performance: "1.9", user: user2)

car5 = Car.create!(model: "Fiesta", brand: "Ford", kms: 400000, year: "2000-02-32", plate: "RPI435", color: "Negro", capacity: "2", load: "320", transmission: "Manual", technical_approval: true, insurance: true, performance: "2.6", user: user2)

# create bookings
puts "creando reservas"
booking1 = Booking.create!(check_in: "2021-01-01", check_out: "2021-01-05", pick_point: "Av. Rivadavia 1234", drop_point: "Av. Rivadavia 1234", time_check_in: "10:00", time_check_out: "13:00", user: user1, car: car1)

booking2 = Booking.create!(check_in: "2021-03-04", check_out: "2021-03-10", pick_point: "Av. Rivadavia 1234", drop_point: "Av. Rivadavia 1234", time_check_in: "10:00", time_check_out: "12:00", user: user2, car: car2)
