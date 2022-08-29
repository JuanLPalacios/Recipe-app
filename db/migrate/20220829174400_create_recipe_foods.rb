class CreateRecipeFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_foods do |t|
      t.float :quantity
      t.integer :recipe_id, null: false
      t.integer :food_id, null: false

      t.timestamps
    end
    add_index :recipe_foods, :recipe_id
    add_index :recipe_foods, :food_id
  end
end
