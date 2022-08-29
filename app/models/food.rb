class Food < ApplicationRecord
  validates :name, presence: { allow_blank: false, message: 'must not be blank.' }
  validates :measurement_unit, presence: { allow_blank: false, message: 'must not be blank.' }
  validates :price, comparison: { greater_than_or_equal_to: 0 }
  validates :quantity, comparison: { greater_than: 0 }

  has_many :recipes, through: :recipe_foods
  belongs_to :user
end
