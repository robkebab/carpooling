# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
jr = User.create(username: "Me", password_digest: "not you")
fl = Trip.create(name: "florida", location: "Miami")
pr = PassengerRelationship.create(user: jr, trip: fl)

5.times {User.create(username: Faker::Name.new, password_digest: "1234")}
5.times {Trip.create(name: Faker::Space.galaxy , location: Faker::Space.planet)}
10.times {PassengerRelationship.create(user: User.all.sample, trip: Trip.all.sample)}
10.times {DriverRelationship.create(user: User.all.sample, trip: Trip.all.sample)}
