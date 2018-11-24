# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the , command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating schools..."

puts "1"
  School.create!(
    title: "stoicism",
    score: 100,
    description: "blabla",
    badge: "blabl",
    photo: "image"
  )

puts "2"
  School.create!(
    title: "Budhism",
    score: 120,
    description: "blabla",
    badge: "blabl",
    photo: "image"
  )

puts "3"
  School.create!(
    title: "Epicurism",
    score: 150,
    description: "blabla",
    badge: "blabl",
    photo: "image"
  )

puts "4"
  School.create!(
    title: "Academy",
    score: 160,
    description: "blabla",
    badge: "blabl",
    photo: "image"
  )

puts '5'
  Profile.create!(
    city: "Lille",
    username: "Gilles",
    age: 2,
    sexe: "femme",
    grade: "novice"
    )

puts "ok"
