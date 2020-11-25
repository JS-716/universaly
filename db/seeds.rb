# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

celine = User.create!(first_name: "Céline", last_name: "Dion", email: "celine.dion@gmail.com", password: "secret", profile_picture: "https://images.pexels.com/photos/4491476/pexels-photo-4491476.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", mother_tongue: "FR", reward: "Beginner")