# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create 10 posts
require 'faker'

25.times do
  Post.create(
    title: Faker::Lorem.sentence,
    secondtitle: Faker::Lorem.sentence,
    supertitle: Faker::Lorem.sentence,

    body: Faker::Lorem.paragraphs(number: rand(1..5)).join("\n\n"),

    important: Faker::Boolean.boolean
  )
end
