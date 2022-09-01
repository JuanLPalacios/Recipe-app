class RecipeFoodsController < ApplicationController
  def new
    @recipe = Recipe.find params[:recipe_id]
    @recipe_food = RecipeFood.new
  end

  def create
    @recipe_food = RecipeFood.new(recipe_food_params)
    @recipe_food.recipe_id = params[:recipe_id]
    if @recipe_food.save
      redirect_to recipe_path(params[:recipe_id])
    else
      @recipe = Recipe.find params[:recipe_id]
      render :new, status: :unprocessable_entity
    end
  end

  def recipe_food_params
    params.require(:recipe_food).permit(:quantity, :food_id)
  end

  def destroy
    rec_food = RecipeFood.find(params[:id])
    rec_food.destroy
    redirect_to recipe_path(params[:recipe_id]), notice: 'Food deleted.'
  end

  def edit
    @recipe = Recipe.find params[:recipe_id]
    @recipe_food = RecipeFood.find params[:id]
  end

  def update
    @recipe = RecipeFood.find(params[:id])
    if @recipe.update(recipe_food_params)
      redirect_to recipe_path(params[:recipe_id])
    else
      render :edit, status: :unprocessable_entity
    end
  end
end
