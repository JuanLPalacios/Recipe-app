class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: { allow_blank: false, message: 'must not be blank.' }

  has_many :recipes
  has_many :foods

  delegate :can?, :cannot?, to: :ability

  def ability
    @ability ||= Ability.new(self)
  end
end
