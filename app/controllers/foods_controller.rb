class FoodsController < ApplicationController
  def index
    @foods = Food.where(user_id: current_user.id)
      .includes(:user)
    @current_user = current_user
  end
end
