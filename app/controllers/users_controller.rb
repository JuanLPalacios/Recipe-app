class UsersController < ApplicationController
  def general_shopping_list
    @items = current_user.recipe_foods
      .group(:food)
      .sum(:quantity)
      .map do |food, required, *|
        required -= food.quantity
        { name: food.name, quantity: required, unit: food.measurement_unit, price: required * food.price }
      end
    @items = @items.select { |item| (item[:quantity]).positive? }
  end
end
