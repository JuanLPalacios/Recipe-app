class UsersController < ApplicationController
  def general_shopping_list
    @items = current_user.recipe_foods
      .group(:food)
      .sum(:quantity)
      .map do |food, quantity, *|
        quantity -= food.quantity
        { name: food.name, quantity:, unit: food.measurement_unit, price: quantity * food.price }
      end
    @items = @items.select { |item| (item[:quantity]).positive? }
  end
end
