# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create 10 posts
require 'faker'
require "open-uri"


104.times do
  Post.create(
    title: Faker::Lorem.sentence,
    secondtitle: Faker::Lorem.sentence,
    supertitle: Faker::Lorem.sentence,

    body: Faker::Lorem.paragraphs(number: rand(1..5)).join("\n\n"),

    important: Faker::Boolean.boolean
  )
end


# post with image
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
post = Post.new(title: "Title", secondtitle: "Secondtitle", supertitle: "Supertitle", body: "body", important: false)
post.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
post.save


file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/800px-Image_created_with_a_mobile_phone.png")
post = Post.new(title: "Title", secondtitle: "Secondtitle", supertitle: "Supertitle", body: "body", important: true)
post.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
post.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
post = Post.new(title: "Title", secondtitle: "Secondtitle", supertitle: "Supertitle", body: "body", important: false)
post.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
post.save

post = Post.new(title: "Only Title", secondtitle: "", supertitle: "", body: "body", important: false)
post.save



file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/800px-Image_created_with_a_mobile_phone.png")
post = Post.new(title: "Only Title", secondtitle: "", supertitle: "", body: "body", important: false)
post.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
post.save



post = Post.new(title: "Title and secondtitle", secondtitle: "with no supertitle", supertitle: "", body: "body", important: true)
post.save



file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
post = Post.new(title: "Title, secontitle and image", secondtitle: "", supertitle: "", body: "body", important: false)
post.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
post.save
