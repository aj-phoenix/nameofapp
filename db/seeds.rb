# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(name: "KWC Hoodie", description: "The super warm KWC Branded Hoodie", image_url: "sweatshirts.jpeg", price: "$45")
Product.create(name: "KWC T-Shirt", description: "The KWC T Shirt", image_url: "tshirts.jpg", price: "$20")
Product.create(name: "KWC Mug", description: "The Perfect Mug for Mondays", image_url: "kwcmug.jpg", price: "$10")
