class RestaurantsController < ApplicationController

  # A visitor can see the list of all restaurants.
  def index
    @restaurants = Restaurant.all
  end
  # A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
      if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was successfully created.'
    else
      render :new
    end
  end

  def update
  @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(restaurant_params)
      redirect_to(@restaurant)
    else
      render "edit"
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :stars)
  end
end
