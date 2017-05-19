class CocktailsController < ApplicationController

# get /cocktails/:id
  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

# get /cocktails
  def index
    @cocktails = Cocktail.all
  end

# get  /cocktails/new
  def new
    @cocktail = Cocktail.new
  end

# post /cocktails
  def create
  end
end
