class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  validates :name, presence: { allow_blank: false, message: 'must not be blank.' }

  has_many :recipes
  has_many :foods
  has_many :recipe_foods, through: :foods

  delegate :can?, :cannot?, to: :ability

  def ability
    @ability ||= Ability.new(self)
  end
end
