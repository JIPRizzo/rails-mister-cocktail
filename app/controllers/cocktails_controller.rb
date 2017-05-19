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
  @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
