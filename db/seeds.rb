puts "Clean de nos seed"
Meal.destroy_all

puts "Creatings meals...."



meals_attributes =
[
 {
  name: Faker::Food.dish ,
  category: Faker::Demographic.demonym ,
  cooked_at: Faker::Date.between(Date.today, Date.tomorrow),
  price: 3,
  description: "#{Faker::Food.ingredient}, #{Faker::Food.spice} ",
  user_id: 2 },
   {
  name: Faker::Food.dish ,
  category: Faker::Demographic.demonym ,
  cooked_at: Faker::Date.between(Date.today, Date.tomorrow),
  price: 3,
  description: "#{Faker::Food.ingredient}, #{Faker::Food.spice} ",
  user_id: 1 },
   {
  name: Faker::Food.dish ,
  category: Faker::Demographic.demonym ,
  cooked_at: Faker::Date.between(Date.today, Date.tomorrow),
  price: 3,
  description: "#{Faker::Food.ingredient}, #{Faker::Food.spice} ",
  user_id: 3 },
   {
  name: Faker::Food.dish ,
  category: Faker::Demographic.demonym ,
  cooked_at: Faker::Date.between(Date.today, Date.tomorrow),
  price: 3,
  description: "#{Faker::Food.ingredient}, #{Faker::Food.spice} ",
  user_id: 2 },
   {
  name: Faker::Food.dish ,
  category: Faker::Demographic.demonym ,
  cooked_at: Faker::Date.between(Date.today, Date.tomorrow),
  price: 3,
  description: "#{Faker::Food.ingredient}, #{Faker::Food.spice} ",
  user_id: 1 },
   {
  name: Faker::Food.dish ,
  category: Faker::Demographic.demonym ,
  cooked_at: Faker::Date.between(Date.today, Date.tomorrow),
  price: 3,
  description: "#{Faker::Food.ingredient}, #{Faker::Food.spice} ",
  user_id: 3 },
   {
  name: Faker::Food.dish ,
  category: Faker::Demographic.demonym ,
  cooked_at: Faker::Date.between(Date.today, Date.tomorrow),
  price: 3,
  description: "#{Faker::Food.ingredient}, #{Faker::Food.spice} ",
  user_id: 2 },
   {
  name: Faker::Food.dish ,
  category: Faker::Demographic.demonym ,
  cooked_at: Faker::Date.between(Date.today, Date.tomorrow),
  price: 3,
  description: "#{Faker::Food.ingredient}, #{Faker::Food.spice} ",
  user_id: 1 },
   {
  name: Faker::Food.dish ,
  category: Faker::Demographic.demonym ,
  cooked_at: Faker::Date.between(Date.today, Date.tomorrow),
  price: 3,
  description: "#{Faker::Food.ingredient}, #{Faker::Food.spice} ",
  user_id: 3 },
]



Meal.create!(meals_attributes)
puts 'Finished'
