(0..10).each do |i|
    user = User.create(name: "User #{i}", email: "John.doe.#{i}@gmail.com", password: '123456', password_confirmation: '123456', confirmed_at: DateTime.now)
    foods = []
    recipes = []
    (0..10).each do |j|
        foods << Food.create(name: "Foods #{j}", measurement_unit: 'Kg', price: 5, quantity: 3+j, user: user)
    end
    (0..10).each do |j|
        recipes << Recipe.create(name: "Recipe #{j} of User #{i}", preparetion_time: 20, cooking_time: 10, description: "This is the recipe description #{j} of User #{i}:  ut rhoncus orci auctor non. Phasellus aliquam tristique venenatis. Etiam ornare risus at libero sollicitudin fermentum. Ut iaculis sapien nec fermentum porta. Nam vel dui velit. Sed eget est mattis", public: (j+i)%2==0, user_id: user.id, created_at: DateTime.now, updated_at: DateTime.now)
    end
    recipes.each_with_index do |recipe,j|
        foods.each_with_index do |food,k|
            RecipeFood.create(quantity: 2, recipe_id: recipe.id, food_id: food.id) if (i+j+k)%3==0
        end
    end
end 