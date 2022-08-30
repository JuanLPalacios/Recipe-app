class FoodsController < ApplicationController
  def index
    @foods = Food.all
    @current_user = current_user
  end
end
