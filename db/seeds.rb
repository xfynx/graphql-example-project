# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.create!(name: 'Вася')
u2 = User.create!(name: 'Петя')
post = Post.create!(user: u, title: 'ddd', body: 'asd')
Comment.create!(body: 'asd', post: post, user: u2)
Comment.create!(body: 'asdsadf', post: post, user: u)