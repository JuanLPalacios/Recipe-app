class RecipeFoodsController < ApplicationController
  def new
    @recipe = Recipe.find params[:recipe_id]
    @recipe_food = RecipeFood.new
  end

  def create
    @recipe_food = RecipeFood.new(recipe_food_params)
    @recipe_food.user = current_user
    if @recipe_food.save
      redirect_to recipe_foods_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def recipe_food_params
    params.require(:recipe_food).permit(:quantity, :recipe_id, :food_id)
  end
end
