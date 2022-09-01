# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.create(id: 1, name: 'John Doe', email: 'John.doe@gmail.com', password: '123456', password_confirmation: '123456', confirmed_at: DateTime.now)
user2 = User.create(id: 2, name: 'Lara Croft', email: 'lara.croft@gmail.com', password: '123456', password_confirmation: '123456', confirmed_at: DateTime.now)
user3 = User.create(id: 3, name: 'Mr. Mario', email: 'mario.plumber@gmail.com', password: '123456', password_confirmation: '123456', confirmed_at: DateTime.now)
user4 = User.create(id: 4, name: 'Michelle Newman', email: 'newman.michelle@gmail.com', password: '123456', password_confirmation: '123456', confirmed_at: DateTime.now)

food1 = Food.create(name: 'chiken', measurement_unit: 'Kg', price: 5, quantity: 3, user_id: user.id, user: user)
food2 = Food.create(name: 'pork', measurement_unit: 'Kg', price: 1, quantity: 3, user_id: user2.id, user: user2)
food3 = Food.create(name: 'Tomato', measurement_unit: 'Pice', price: 2, quantity: 3, user_id: user3.id, user: user3)
food4 = Food.create(name: 'Avocado', measurement_unit: 'Pice', price: 1.5, quantity: 3, user_id: user.id, user: user4)

recipe1 = Recipe.create(name: 'Chicken Pork', preparetion_time: 20, cooking_time: 10, description: 'This is the recipe description:  ut rhoncus orci auctor non. Phasellus aliquam tristique venenatis. Etiam ornare risus at libero sollicitudin fermentum. Ut iaculis sapien nec fermentum porta. Nam vel dui velit. Sed eget est mattis', public: true, user_id: user.id, created_at: DateTime.now, updated_at: DateTime.now)
recipe2 = Recipe.create(name: 'Green Tomato', preparetion_time: 10, cooking_time: 15, description: 'This is the recipe description:  ut rhoncus orci auctor non. Phasellus aliquam tristique venenatis. Etiam ornare risus at libero sollicitudin fermentum. Ut iaculis sapien nec fermentum porta. Nam vel dui velit. Sed eget est mattis', public: true, user_id: user2.id, created_at: DateTime.now, updated_at: DateTime.now)
recipe3 = Recipe.create(name: 'Avocado Pork', preparetion_time: 15, cooking_time: 13, description: 'This is the recipe description:  ut rhoncus orci auctor non. Phasellus aliquam tristique venenatis. Etiam ornare risus at libero sollicitudin fermentum. Ut iaculis sapien nec fermentum porta. Nam vel dui velit. Sed eget est mattis', public: true, user_id: user3.id, created_at: DateTime.now, updated_at: DateTime.now)
recipe4 = Recipe.create(name: 'Tomato Chicken', preparetion_time: 12, cooking_time: 18, description: 'This is the recipe description:  ut rhoncus orci auctor non. Phasellus aliquam tristique venenatis. Etiam ornare risus at libero sollicitudin fermentum. Ut iaculis sapien nec fermentum porta. Nam vel dui velit. Sed eget est mattis', public: true, user_id: user4.id, created_at: DateTime.now, updated_at: DateTime.now)

rec_food = RecipeFood.create(quantity: 2, recipe_id: recipe1.id, food_id: food1.id)
rec_food = RecipeFood.create(quantity: 1, recipe_id: recipe1.id, food_id: food2.id)
rec_food = RecipeFood.create(quantity: 3, recipe_id: recipe2.id, food_id: food3.id)
rec_food = RecipeFood.create(quantity: 4, recipe_id: recipe2.id, food_id: food4.id)
rec_food = RecipeFood.create(quantity: 1, recipe_id: recipe3.id, food_id: food2.id)
rec_food = RecipeFood.create(quantity: 6, recipe_id: recipe3.id, food_id: food4.id)
rec_food = RecipeFood.create(quantity: 2, recipe_id: recipe3.id, food_id: food3.id)
rec_food = RecipeFood.create(quantity: 1, recipe_id: recipe4.id, food_id: food1.id)
rec_food = RecipeFood.create(quantity: 3, recipe_id: recipe4.id, food_id: food3.id)
rec_food = RecipeFood.create(quantity: 1, recipe_id: recipe4.id, food_id: food4.id)