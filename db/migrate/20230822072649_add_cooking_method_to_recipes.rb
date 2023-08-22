class AddCookingMethodToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :cooking_method, :string
  end
end
