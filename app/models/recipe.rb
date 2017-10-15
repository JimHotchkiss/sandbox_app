class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  def ingredients_attributes=(ingredient_attributes)
    ingredient_attributes.values.each do |ingredient_attribute|
      if !ingredient_attribute[:name].blank?
        ingredient = Ingredient.find_or_create_by(ingredient_attribute)
        self.ingredients << ingredient
      end
    end
  end

end
