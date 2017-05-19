class DosesController < ApplicationController
end





private

  def dose_params
    params.require(:dose).permit(:description, :ingredient)
  end
end
