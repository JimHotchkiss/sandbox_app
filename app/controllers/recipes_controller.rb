class RecipesController < ApplicationController
  include RecipesHelper

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      flash[:message] = "Thanks for contributing a recipe"
      redirect_to recipe_path(@recipe)
    else
      # put in validations
      render :new
    end
  end

  def show
    @recipe = find_recipe
  end

  def destroy
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :description, ingredient_ids:[], ingredients_attributes: [:name])
  end
end
