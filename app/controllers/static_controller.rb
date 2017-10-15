class StaticController < ApplicationController


  def welcome
    @ingredients = Ingredient.all
    @recipes = Recipe.all
  end

end
