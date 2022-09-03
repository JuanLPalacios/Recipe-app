class UsersController < ApplicationController
  def general_shopping_list
    @items = (if params[:recipe].nil?
                current_user.recipe_foods
              else
                current_user.recipe_foods.where(recipe_id: params[:recipe])
              end)
      .group(:food)
      .sum(:quantity)
      .map do |food, required, *|
        required -= food.quantity
        { name: food.name, quantity: required, unit: food.measurement_unit, price: required * food.price }
      end
    @items = @items.select { |item| (item[:quantity]).positive? }
  end
end
