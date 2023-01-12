# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
require 'bcrypt'

Category.destroy_all
Product.destroy_all
User.destroy_all
Role.destroy_all
# Order.destroy_all

# Create roles
puts "Creating roles..."
Role.create(name: "admin")
Role.create(name: "agent")
Role.create(name: "user")
puts "Roles created"

#Create Users
puts "Creating users..."
User.create(name: "admin", email:"admin@mail.com", password: "123456")
User.create(name: "agent", email:"agent@mail.com", password: "123456")
User.create(name: "user", email:"user@mai.com", password: "123456")
puts "Users created"

#Create User Roles
puts "Creating user roles..."
UserRole.create(user_id: User.find_by(name: "admin").id, role_id: Role.find_by(name: "admin").id)
UserRole.create(user_id: User.find_by(name: "agent").id, role_id: Role.find_by(name: "agent").id)
UserRole.create(user_id: User.find_by(name: "user").id, role_id: Role.find_by(name: "user").id)

# Create categories
puts "Creating categories..."
Category.create(name: "Shoes")
Category.create(name: "Clothes")
Category.create(name: "Accessories")
puts "Categories created"

# Create products
puts "Creating products..."
products = [
    {
        name: "Nike Air Max 270 React",
        image: Faker::LoremFlickr.image(size: "480x640", search_terms: ["nike air max 270 react"]),
        description: "The Nike Air Max 270 React is a new addition to the Air Max family. It features a React foam midsole and a Max Air unit in the heel for a comfortable ride. The upper is made of a combination of mesh and synthetic materials. The shoe is available in a variety of colors and is a great addition to any sneaker collection.",
        size: "6, 7, 8, 9, 10, 11, 12",
        quantity: 10,
        price: 100.00,
        category_id: Category.find_by(name: "Shoes").id
    },
    {
        name: "Nike Air Max 90",
        image: Faker::LoremFlickr.image(size: "480x640", search_terms: ["nike air max 90"]),
        description: "The Nike Air Max 90 is a classic shoe that has been around for decades. It features a Max Air unit in the heel for a comfortable ride. The upper is made of a combination of mesh and synthetic materials. The shoe is available in a variety of colors and is a great addition to any sneaker collection.",
        size: "6, 7, 8, 9, 10, 11, 12",
        quantity: 10,
        price: 100.00,
        category_id: Category.find_by(name: "Shoes").id
    },
    {
        name: "Nike Air Max 95",
        image: Faker::LoremFlickr.image(size: "480x640", search_terms: ["nike air max 95"]),
        description: "The Nike Air Max 95 is a classic shoe that has been around for decades. It features a Max Air unit in the heel for a comfortable ride. The upper is made of a combination of mesh and synthetic materials. The shoe is available in a variety of colors and is a great addition to any sneaker collection.",
        size: "6, 7, 8, 9, 10, 11, 12",
        quantity: 10,
        price: 100.00,
        category_id: Category.find_by(name: "Shoes").id
    },
    {
        name: "Nike Air Max 97",
        image: Faker::LoremFlickr.image(size: "480x640", search_terms: ["nike air max 97"]),
        description: "The Nike Air Max 97 is a classic shoe that has been around for decades. It features a Max Air unit in the heel for a comfortable ride. The upper is made of a combination of mesh and synthetic materials. The shoe is available in a variety of colors and is a great addition to any sneaker collection.",
        size: "6, 7, 8, 9, 10, 11, 12",
        quantity: 10,
        price: 100.00,
        category_id: Category.find_by(name: "Shoes").id
    },
    {
        name: "Nike Air Max 720",
        image: Faker::LoremFlickr.image(size: "480x640", search_terms: ["nike air max 720"]),
        description: "The Nike Air Max 720 is a new addition to the Air Max family. It features a Max Air unit in the heel for a comfortable ride. The upper is made of a combination of mesh and synthetic materials. The shoe is available in a variety of colors and is a great addition to any sneaker collection.",
        size: "6, 7, 8, 9, 10, 11, 12",
        quantity: 10,
        price: 100.00,
        category_id: Category.find_by(name: "Shoes").id
    },
    {
        name: "Nike Hoodie",
        image: Faker::LoremFlickr.image(size: "480x640", search_terms: ["nike hoodie"]),
        description: "The Nike Hoodie is a classic hoodie that has been around for decades. The hoodie is made of cotton with a layer of smooth fleece on the inside to suit cold weather. The Hoodie is available in a variety of colors and is a great addition to any Hoodie collection.",
        size: "S, M, L, XL",
        quantity: 10,
        price: 100.00,
        category_id: Category.find_by(name: "Clothes").id
    },
    {
        name: "Nike T-Shirt",
        image: Faker::LoremFlickr.image(size: "480x640", search_terms: ["nike tshirt"]),
        description: "The Nike T-Shirt is a classic Tee that has been around for decades. It features a stylish fit made of 100% cotton. The Tee is available in a variety of colors and is a great addition to any Tee collection.",
        size: "S, M, L, XL",
        quantity: 10,
        price: 100.00,
        category_id: Category.find_by(name: "Clothes").id
    },
    {
        name: "Nike Cap",
        image: Faker::LoremFlickr.image(size: "480x640", search_terms: ["nike cap"]), 
        description: "The Nike Cap is a classic cap that has been around for decades. It features a stylish fit made of 100% cotton. The Cap is available in a variety of colors and is a great addition to any Cap collection.",
        size: "S, M, L, XL",
        quantity: 10,
        price: 100.00,
        category_id: Category.find_by(name: "Accessories").id
    }
]

products.each do |product|
    Product.create(product)
end
puts "Products created"

puts "Seeding done!"
