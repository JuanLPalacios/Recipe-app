class RecipesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:public_recipes]
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.where(user: current_user)
      .includes(:user)
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    redirect_to recipes_path, notice: 'Recipe deleted.'
  end

  def public_recipes
    @recipes = Recipe
      .includes(:user, :recipes)
      .where(public: true).order(created_at: :desc)
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    if @recipe.save
      redirect_to recipes_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def recipe_params
    params.require(:recipe).permit(:name, :preparetion_time, :cooking_time, :description, :public)
  end
end
