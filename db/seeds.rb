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
file = URI.open("https://people.com/thmb/rL_KtPmPjjn5u1OEEEM1YZEdVTA=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(749x0:751x2):format(webp)/big-potato-1-67bd57fd9ae44a6f934c8cd1327d9192.jpg")
post = Post.new(title: "Title", secondtitle: "Secondtitle", supertitle: "Supertitle", body: "body", important: false)
post.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
post.save


file = URI.open("https://scontent-mad2-1.xx.fbcdn.net/v/t1.6435-9/49806297_10156385037714032_5993547116910215168_n.jpg?stp=dst-jpg_p600x600&_nc_cat=109&ccb=1-7&_nc_sid=a26aad&_nc_ohc=CWfndQUzCCcAX9doqpW&_nc_ht=scontent-mad2-1.xx&oh=00_AfAeC_Lmo1hmy6cxIUUNTvYSqBb0z1kdpwMeztR7jMnNsA&oe=645E062E")
post = Post.new(title: "Title", secondtitle: "Secondtitle", supertitle: "Supertitle", body: "body", important: true)
post.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
post.save

file = URI.open("https://i.etsystatic.com/24249246/r/il/0af556/4759627265/il_fullxfull.4759627265_13jo.jpg")
post = Post.new(title: "Title", secondtitle: "Secondtitle", supertitle: "Supertitle", body: "body", important: false)
post.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
post.save

post = Post.new(title: "Only Title", secondtitle: "", supertitle: "", body: "body", important: false)
post.save



file = URI.open("https://i.ebayimg.com/images/g/AagAAOSw1zpaedg3/s-l1600.jpg")
post = Post.new(title: "Only Title", secondtitle: "", supertitle: "", body: "body", important: false)
post.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
post.save



post = Post.new(title: "Title and secondtitle", secondtitle: "with no supertitle", supertitle: "", body: "body", important: true)
post.save



file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsm9HRWt20FFR_bd-MWIIx-BEDb4RM7cnVoQ&usqp=CAU")
post = Post.new(title: "Title, secontitle and image", secondtitle: "", supertitle: "", body: "body", important: false)
post.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
post.save
