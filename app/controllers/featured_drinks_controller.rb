class FeaturedDrinksController < ApplicationController
  def index
    @drinks = Drink.where(featured: true).page(params[:page]).per(15)
  end
end
