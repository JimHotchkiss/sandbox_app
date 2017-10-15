module RecipesHelper

  def find_recipe
    Recipe.find(params[:id])
  end
end
