class FoodsController < ApplicationController
  def index
    @foods = Food.where(user_id: current_user.id)
      .includes(:user)
    @current_user = current_user
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    @food.user = current_user
    if @food.save
      redirect_to foods_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def food_params
    params.require(:food).permit(:name, :measurement_unit, :price, :quantity)
  end

  def destroy
    food = Food.find(params[:id])
    food.destroy
    redirect_to foods_path, notice: 'Food deleted.'
  end
end
