class RecipeConverter

  attr_accessor :ingredients


  def initialize(ingredients)
    @ingredients = ingredients
  end

  def to_tablespoons
    ingredients.each do |key,value|
      ingredients[key] = (value / 15)
    end
    ingredients
  end

  def to_cups
    ingredients.each do |key, value|
      ingredients[key] = (value/16)
    end
    ingredients
  end



end
