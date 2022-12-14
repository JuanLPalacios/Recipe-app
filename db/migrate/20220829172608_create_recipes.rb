class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :preparetion_time
      t.integer :cooking_time
      t.text :description
      t.boolean :public
      t.integer :user_id, null: false

      t.timestamps
    end
    add_index :recipes, :user_id
  end
end
