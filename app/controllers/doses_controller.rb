class DosesController < ApplicationController
  before_action :set_ingredient, :set_cocktail

  INGREDIENTS = Ingredient.all

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
  end

  private

  def set_ingredient
    @ingredient = Doses.find(params[:ingredient_id])
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose, :ingredient).permit(:description, :name)
  end
end
