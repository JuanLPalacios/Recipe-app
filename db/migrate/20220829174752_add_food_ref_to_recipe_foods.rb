class AddFoodRefToRecipeFoods < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :recipe_foods, :foods, column: :food_id
  end
end
