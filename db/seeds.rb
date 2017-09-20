# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
products = Product.create([{
	name: 'Red High Heels',
	description: 'High heels with glossy skin.',
	image_url: 'https://i.imgur.com/HlM7fgk.jpg',
	price: $50.00,
	color: "Red"
}])


