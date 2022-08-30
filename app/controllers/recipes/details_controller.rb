class Recipes::DetailsController < ApplicationController
  def index
    @recipe = Recipe.where(id: params[:id])
  end
end
