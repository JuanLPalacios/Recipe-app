class Recipe < ApplicationRecord
  validates :name, presence: { allow_blank: false, message: 'must not be blank.' }
  validates :preparetion_time, comparison: { greater_than_or_equal_to: 0 }
  validates :cooking_time, comparison: { greater_than_or_equal_to: 0 }
  validates :description, presence: { allow_blank: false, message: 'must not be blank.' }

  has_many :recipe_foods, dependent: :delete_all
  has_many :foods, through: :recipe_foods
  belongs_to :user
end
