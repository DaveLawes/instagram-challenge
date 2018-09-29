# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Post.delete_all

user = User.create({email: 'dave@hotmail.com', password: '123456'})
name = 'IMG_20180730_190140_742.jpg'
path = "#{Rails.root}/public/images/#{name}"
post = Post.create({title: 'bohinj', user_id: user.id})
post.image.attach(io: File.open(path), filename: name)
