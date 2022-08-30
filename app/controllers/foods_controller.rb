class FoodsController < ApplicationController
  def index
    @foods = Food.where(user_id: current_user.id)
    @current_user = current_user
  end
end
