# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
ActiveRecord::Base.connection.reset_pk_sequence!('cats')
Cat.create(name: "Moose", birth_date: "2009/1/1", sex: "M", color: "gray", description: "used to be a mean cat, but after hit by car he is nice")
Cat.create(name: "Squish", birth_date: "2021/6/27", sex: "M", color: "black", description: "fluffy sassy boy cat")
Cat.create(name: "Lilly", birth_date: "2017/3/1", sex: "F", color: "black", description: "Queen Bee")
Cat.create(name: "Zoey", birth_date: "2017/3/1", sex: "F", color: "black", description: "weird but nice. Bites!")
Cat.create(name: "Limbo", birth_date: "2016/3/17", sex: "M", color: "black", description: "seal X dolphin")
Cat.create(name: "Jimmy", birth_date: "2023/4/15", sex: "M", color: "black", description: "Genius")

