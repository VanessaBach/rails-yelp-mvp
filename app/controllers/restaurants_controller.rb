class RestaurantsController < ApplicationController
	before_action :set_restaurant, only: [:name, :adress, :phone_number, :category]
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurants_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
  params.require(:restaurant).permit(:name, :adress, :phone_number, :category)
  end
end
