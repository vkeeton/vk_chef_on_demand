# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Destroy all existing Users and Offers
Offer.destroy_all
User.destroy_all

# Create Users (Chefs)
chef1 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.unique.safe_email, user_type: "chef")
chef2 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.unique.safe_email, user_type: "chef")
chef3 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.unique.safe_email, user_type: "chef")
chef4 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.unique.safe_email, user_type: "chef")
chef5 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.unique.safe_email, user_type: "chef")
chef6 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.unique.safe_email, user_type: "chef")

# Create Offers for each Chef
offer1 = Offer.create(cuisine: "Japanese", price: 1000, user_id: chef1.id)
offer2 = Offer.create(cuisine: "Chinese", price: 2000, user_id: chef2.id)
offer3 = Offer.create(cuisine: "French", price: 1500, user_id: chef3.id)
offer4 = Offer.create(cuisine: "American", price: 2500, user_id: chef4.id)
offer5 = Offer.create(cuisine: "Korean", price: 3000, user_id: chef5.id)
offer6 = Offer.create(cuisine: "Italian", price: 3500, user_id: chef6.id)
