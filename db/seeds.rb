# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Booking.destroy_all
Car.destroy_all
User.destroy_all

puts "creando usuarios"
user1 = User.new(email: "julif@gmail.com", password: "123456", name: "Julian", last_name: "Fernandez", cell_phone: "1134567890", address: "Av. Rivadavia 1234", birth_date: "1990-01-01", dni: "12345678", driver_licence_id: "12345678")
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Adam_West_as_Batman.jpg/245px-Adam_West_as_Batman.jpg")
user1.photo.attach(io: file, filename: "user1.png", content_type: "imagen/png")
user1.save!

user2 = User.new(email: "fiore@gmail.com", password: "6325435", name: "Fiorella", last_name: "Albujar", cell_phone: "13544567890", address: "Av. Copiapo 1234", birth_date: "1992-03-10", dni: "2342563", driver_licence_id: "7567452")
file = URI.open("https://w7.pngwing.com/pngs/946/841/png-transparent-ironman-helmet-ironman-icon-thumbnail.png")
user2.photo.attach(io: file, filename: "user2.png", content_type: "imagen/png")
user2.save!

user3 = User.new(email: "gonzalo@gmail.com", password: "6325435", name: "Gonzalo", last_name: "Raggio", cell_phone: "13544567890", address: "Av. Copiapo 1234", birth_date: "1992-03-10", dni: "2342563", driver_licence_id: "7567452")
file = URI.open("https://i.pinimg.com/originals/78/c0/ff/78c0ffa388287ae35a6aeb46be35c621.jpg")
user3.photo.attach(io: file, filename: "user3.png", content_type: "imagen/png")
user3.save!

# create cars
puts "creando autos"
car1 = Car.new(model: "Clio", brand: "Renault", kms: 100000, year: "2010-01-01", plate: "ABC123", color: "Rojo", capacity: "5", load: "500", transmission: "Manual", technical_approval: true, insurance: true, performance: "1.6", user: user1)
file = URI.open("https://www.elcarrocolombiano.com/wp-content/uploads/2019/07/20190728-RENAULT-CLIO-5-2020-PRECIOS-CARACTERISTICAS-Y-VERSIONES-EN-FRANCIA-01.jpg")
car1.photos.attach(io: file, filename: "clio.png", content_type: "imagen/png")
car1.save!

car2 = Car.new(model: "Megane", brand: "Renault", kms: 400000, year: "2015-02-32", plate: "ABC435", color: "Azul", capacity: "4", load: "320", transmission: "Manual", technical_approval: true, insurance: true, performance: "1.6", user: user2)
file = URI.open("https://www.megautos.com/wp-content/uploads/2020/05/Nuevo-Renault-Megane-2020.jpg")
car2.photos.attach(io: file, filename: "megane.png", content_type: "imagen/png")
car2.save!

car2 = Car.new(model: "Megane", brand: "Renault", kms: 400000, year: "2015-02-32", plate: "ABC435", color: "Azul", capacity: "4", load: "320", transmission: "Manual", technical_approval: true, insurance: true, performance: "1.6", user: user2)
file = URI.open("https://www.megautos.com/wp-content/uploads/2020/05/Nuevo-Renault-Megane-2020.jpg")
car2.photos.attach(io: file, filename: "megane.png", content_type: "imagen/png")
car2.save!

car2 = Car.new(model: "Megane", brand: "Renault", kms: 400000, year: "2015-02-32", plate: "ABC435", color: "Azul", capacity: "4", load: "320", transmission: "Manual", technical_approval: true, insurance: true, performance: "1.6", user: user2)
file = URI.open("https://www.megautos.com/wp-content/uploads/2020/05/Nuevo-Renault-Megane-2020.jpg")
car2.photos.attach(io: file, filename: "megane.png", content_type: "imagen/png")
car2.save!

car2 = Car.new(model: "Megane", brand: "Renault", kms: 400000, year: "2015-02-32", plate: "ABC435", color: "Azul", capacity: "4", load: "320", transmission: "Manual", technical_approval: true, insurance: true, performance: "1.6", user: user2)
file = URI.open("https://www.megautos.com/wp-content/uploads/2020/05/Nuevo-Renault-Megane-2020.jpg")
car2.photos.attach(io: file, filename: "megane.png", content_type: "imagen/png")
car2.save!



# create bookings
puts "creando reservas"
booking1 = Booking.create!(check_in: "2021-01-01", check_out: "2021-01-05", pick_point: "Av. Rivadavia 1234", drop_point: "Av. Rivadavia 1234", time_check_in: "10:00", time_check_out: "13:00", user: user1, car: car1)

booking2 = Booking.create!(check_in: "2021-03-04", check_out: "2021-03-10", pick_point: "Av. Rivadavia 1234", drop_point: "Av. Rivadavia 1234", time_check_in: "10:00", time_check_out: "12:00", user: user2, car: car2)
