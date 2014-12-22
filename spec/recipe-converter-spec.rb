require 'rspec'
require_relative '../lib/recipe_converter.rb'

describe RecipeConverter do
  it "Converts grams to tablespoons" do

    ingredients = {
        "sugar" => 15,
        "flour" => 30,
      }


    recipe = RecipeConverter.new(ingredients)

    expected = {
      "sugar" => 1,
      "flour" => 2,
    }


    expect(recipe.to_tablespoons).to eq(expected)
  end

  it "Converts tablespoons to cups" do

    ingredients = {
      "sugar" => 16,
      "flour" => 32,
      }
    recipe = RecipeConverter.new(ingredients)
    expected= {
      "sugar"=> 1,
      "flour"=> 2,
    }


    expect(recipe.to_cups).to eq(expected)
  end


end
