# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

foods = {
  "Peas": 100,
  "Banana": 150,
  "Avocado Sandwich": 450,
  "Oatmeal": 250,
  "French Fries": 450,
  "Tiger Shrimp": 450,
  "Doritos": 100,
  "Stick of Gum": 10,
  "Taco Salad": 600,
  "Chipotle Burrito": 1000,
  "Widmer Beer": 150,
  "Red Wine": 175,
  "Nachos": 450,
  "Celery": 50,
  "Green Apple": 100,
  "Spinach": 80,
  "Rice": 175,
  "Martini": 140,
  "Ice Cream": 250,
  "Veggie Stir Fry": 350,
  "Tofu": 250,
  "Heirloom Tomatoes": 100,
  "Dinner Roll": 100,
  "Mashed Potatoes": 350,
  "Coconut Pie": 550,
  "Denny's Dinner": 1200,
  "Quasadilla": 700,
  "Grilled Salmon": 800,
  "Whiskey": 200,
  "Black Beans": 100,
  "Cliff Bar": 150
}

exercises = {
  "Running": 100,
  "Biking": 100,
  "Ultimate Frisbee w/Michael": 500,
  "Weightlifting": 300,
  "Coding": 10,
  "Food Cart Surfing": 100,
  "Ambassador at Epicodus": 500,
}

foods.each do |key, value|
  Event.create(name: key, calories: value, event_type: "food")
end

exercises.each do |key, value|
  Event.create(name: key, calories: value, event_type: "exercise")
end
