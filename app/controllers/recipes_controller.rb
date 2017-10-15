class RecipesController < ApplicationController

  def new
  end

  def create
  end

  def destroy
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :description, ingredient_ids:[], ingredients_attributes: [:name])
  end
end
