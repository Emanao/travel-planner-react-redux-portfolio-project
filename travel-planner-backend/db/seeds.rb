# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.delete_all
Booking.reset_pk_sequence
Trip.delete_all
Trip.reset_pk_sequence

# ActiveRecord::Base.connection.reset_pk_sequence!("trip")

trip = Trip.create(name:"My first trip")
trip.bookings.create(name:"Car rental")