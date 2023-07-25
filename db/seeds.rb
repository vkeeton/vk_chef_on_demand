# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Destroy all existing Users and Offers
Booking.destroy_all
Offer.destroy_all
User.destroy_all

# Need to make 6 Cuisines for homepage
# Is this OK to keep hardcoded as is?
# How to make

# Each Cuisine needs to have 3 chefs

# Each Offer is linked to a Chef

# Create Users (Chefs)

6.times do
  chef = User.create(
    email: Faker::Internet.unique.safe_email,
    password: "123456",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    user_type: "chef"
    )
end

3.times do
  offer = Offer.create(
    cuisine: "Japanese",
    price: rand(1000...9000),
    # this line assigns a random user who is a chef to an offer
    user_id: User.where(user_type: "chef").sample.id
    )
end
puts "Japanese offers created"

3.times do
  offer = Offer.create(
    cuisine: "Chinese",
    price: rand(1000...9000),
    # this line assigns a random user who is a chef to an offer
    user_id: User.where(user_type: "chef").sample.id
    )
end

3.times do
  offer = Offer.create(
    cuisine: "French",
    price: rand(1000...9000),
    # this line assigns a random user who is a chef to an offer
    user_id: User.where(user_type: "chef").sample.id
    )
end

3.times do
  offer = Offer.create(
    cuisine: "American",
    price: rand(1000...9000),
    # this line assigns a random user who is a chef to an offer
    user_id: User.where(user_type: "chef").sample.id
    )
end

3.times do
  offer = Offer.create(
    cuisine: "Korean",
    price: rand(1000...9000),
    # this line assigns a random user who is a chef to an offer
    user_id: User.where(user_type: "chef").sample.id
    )
end

3.times do
  offer = Offer.create(
    cuisine: "Italian",
    price: rand(1000...9000),
    # this line assigns a random user who is a chef to an offer
    user_id: User.where(user_type: "chef").sample.id
    )
end
