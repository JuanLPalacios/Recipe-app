# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.create(name: 'John Doe', email: 'John.doe@gmail.com', password: '123456', password_confirmation: '123456', confirmed_at: DateTime.now)
food1 = Food.create(name: 'chiken', measurement_unit: 'Kg', price: 5, quantity: 3, user_id: user.id)
food2 = Food.create(name: 'pork', measurement_unit: 'Kg', price: 1, quantity: 3, user_id: user.id)
recipe1 = Recipe.create(name: 'Chicken Pork', preparetion_time: 20, cooking_time: 10, description: 'This is the recipe description:  ut rhoncus orci auctor non. Phasellus aliquam tristique venenatis. Etiam ornare risus at libero sollicitudin fermentum. Ut iaculis sapien nec fermentum porta. Nam vel dui velit. Sed eget est mattis', public: false, user_id: 1, created_at: DateTime.now, updated_at: DateTime.now)