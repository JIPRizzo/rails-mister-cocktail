class DosesController < ApplicationController

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
    @dose.description = params[:dose][:description]
    @dose.ingredient = Ingredient.find(params[:dose][:ingredient])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to @cocktail
    else
      render "cocktails/show"
    end
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient)
  end

end


