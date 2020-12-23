# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.create(name: 'SFO')
Airport.create(name: 'NYC')
Flight.create(start_id: 1, end_id: 2, departure_time: DateTime.new(2020, 10, 10, 10, 00, 00), flight_time: "8:00")
Flight.create(start_id: 1, end_id: 2, departure_time: DateTime.new(2020, 10, 11, 11, 00, 00), flight_time: "7:45")
Flight.create(start_id: 1, end_id: 2, departure_time: DateTime.new(2020, 10, 12, 10, 00, 00), flight_time: "8:00")
Flight.create(start_id: 2, end_id: 1, departure_time: DateTime.new(2020, 10, 10, 18, 00, 00), flight_time: "7:30")
Flight.create(start_id: 2, end_id: 1, departure_time: DateTime.new(2020, 10, 10, 12, 00, 00), flight_time: "8:15")
Flight.create(start_id: 2, end_id: 1, departure_time: DateTime.new(2020, 10, 11, 23, 59, 00), flight_time: "8:01")
