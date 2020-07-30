class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save

    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
