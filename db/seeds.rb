# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

collections = Collection.all

if collections.count > 0
  puts "Collections already added"
else
  collection_data = [{name: "men"}, {name: "women"}, {name: "kids"}, {name: "newins"}]
  Collection.create!(collection_data)
  puts "Collection lists added"
end


collection_products = CollectionProduct.all

if collection_products.count > 0
  puts "Collections already added"
else
  collection_products_data = [{name: "outdoor"}, {name: "blazzers"}, {name: "tops"}, {name: "dresses"},  
  {name: "t-shirts"}, {name: "jumber"}, {name: "60s"}, {name: "jeans"}, {name: "bags"}, {name: "accessories"},
  {name: "shoes"}]
  CollectionProduct.create!(collection_products_data)
  puts "Collection products lists added"
end

# https://drive.google.com/file/d/1LposVup-wYZePZ9sAxFA2MvGqcIUU3UO/view 