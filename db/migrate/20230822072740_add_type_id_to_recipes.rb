class AddTypeIdToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :type_id, :integer
  end
end
