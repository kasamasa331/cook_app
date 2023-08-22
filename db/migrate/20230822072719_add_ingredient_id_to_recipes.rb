class AddIngredientIdToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :ingredient_id, :integer
  end
end
