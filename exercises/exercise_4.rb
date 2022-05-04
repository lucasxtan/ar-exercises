require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

stores = Store.create(
  name: "Surrey",
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true)

stores = Store.create(
  name: "Whistler",
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false)

stores = Store.create(
  name: "Yaletown",
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

# puts @mens_stores.each
  

@mens_stores.each do |store|
  puts "#{store.name} has an annual revenue of #{store.annual_revenue}" 
end
# , womens_apparel: true
@womens_stores = Store.where("annual_revenue < 1000000 AND womens_apparel = true")

@womens_stores.each do |store|
  puts "#{store.name} has an annual revenue of #{store.annual_revenue}" 
end