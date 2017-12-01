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
   },
   {
  name: Faker::Food.dish ,
  category: Faker::Demographic.demonym ,
  cooked_at: Faker::Date.between(Date.today, Date.tomorrow),
  price: 3,
  description: "#{Faker::Food.ingredient}, #{Faker::Food.spice} ",
   },
   {
  name: Faker::Food.dish ,
  category: Faker::Demographic.demonym ,
  cooked_at: Faker::Date.between(Date.today, Date.tomorrow),
  price: 3,
  description: "#{Faker::Food.ingredient}, #{Faker::Food.spice} ",
  },
   {
  name: Faker::Food.dish ,
  category: Faker::Demographic.demonym ,
  cooked_at: Faker::Date.between(Date.today, Date.tomorrow),
  price: 3,
  description: "#{Faker::Food.ingredient}, #{Faker::Food.spice} ",
  },
   {
  name: Faker::Food.dish ,
  category: Faker::Demographic.demonym ,
  cooked_at: Faker::Date.between(Date.today, Date.tomorrow),
  price: 3,
  description: "#{Faker::Food.ingredient}, #{Faker::Food.spice} ",
   },
   {
  name: Faker::Food.dish ,
  category: Faker::Demographic.demonym ,
  cooked_at: Faker::Date.between(Date.today, Date.tomorrow),
  price: 3,
  description: "#{Faker::Food.ingredient}, #{Faker::Food.spice} ",
  },
   {
  name: Faker::Food.dish ,
  category: Faker::Demographic.demonym ,
  cooked_at: Faker::Date.between(Date.today, Date.tomorrow),
  price: 3,
  description: "#{Faker::Food.ingredient}, #{Faker::Food.spice} ",
   },
   {
  name: Faker::Food.dish ,
  category: Faker::Demographic.demonym ,
  cooked_at: Faker::Date.between(Date.today, Date.tomorrow),
  price: 3,
  description: "#{Faker::Food.ingredient}, #{Faker::Food.spice} ",
   },
   {
  name: Faker::Food.dish ,
  category: Faker::Demographic.demonym ,
  cooked_at: Faker::Date.between(Date.today, Date.tomorrow),
  price: 3,
  description: "#{Faker::Food.ingredient}, #{Faker::Food.spice} ",
   },
]



Meal.create!(meals_attributes)
puts 'Finished'
