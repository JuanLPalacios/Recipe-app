class RecipiesController < ApplicationController
  def show; end

  def index; end

  def public_recipes
    @recipes = Recipe.where(public: true).order(created_at: :desc)
  end
end
