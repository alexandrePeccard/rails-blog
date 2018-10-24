# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

100.times do |index|
  user = User.create!(first_name: Faker::Company.name, last_name: Faker::Company.name, email: Faker::Internet.email)
  category = Category.create!(title: Faker::Company.name)
  articles = Article.create(category_id: index + 1, title: Faker::FunnyName.name, content: Faker::FunnyName.name, user_id: index + 1)
  comments = Comment.create(article_id: index + 1, content: Faker::FunnyName.name, user_id: index + 1)
  likes = Like.create(user_id: index + 1, article_id: index + 1)
  comments = Comment.create(comment_id: index + 1, content: Faker::FunnyName.name, user_id: index + 1)
  likes = Like.create(user_id: index + 1, comment_id: index + 1)
end