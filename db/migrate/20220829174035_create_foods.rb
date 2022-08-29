class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :mesurement_unit
      t.float :price
      t.float :quantity
      t.integer :user_id

      t.timestamps
    end
    add_index :foods, :user_id
  end
end
