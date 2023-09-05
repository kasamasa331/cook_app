class CountriesController < ApplicationController
  def index
    # recipe_idが1, 2, 4の国をランダムに1つ選ぶ
    random_recipe = Recipe.where(country_id: [1, 2]).order("RAND()").first

    if random_recipe
      country = Country.find(random_recipe.country_id)
      @random_country_name = country.name
      @random_country_recipes = Recipe.where(country_id: country.id).page(params[:page]).per(3)
    else
      @random_country_recipes = []
    end
  end
end