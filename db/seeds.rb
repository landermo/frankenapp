# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
5.times do
  User.create(
      name: Faker::GameOfThrones.character,
      email: Faker::Internet.email
end

users = User.all

5.times do
  Post.create(
      title: Faker::TwinPeaks.location,
      body: Faker::TwinPeaks.quote,
      author_id: users.sample.id)
end