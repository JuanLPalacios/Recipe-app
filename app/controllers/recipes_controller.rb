class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.where(user: current_user)
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    redirect_to recipes_path, notice: 'Recipe deleted.'
  end

  def public_recipes
    @recipes = Recipe.where(public: true).order(created_at: :desc)
  end
end
