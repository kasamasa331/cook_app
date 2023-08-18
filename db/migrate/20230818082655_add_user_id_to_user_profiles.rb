class AddUserIdToUserProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :user_profiles, :user_id, :integer
    add_index :user_profiles, :user_id
  end
end
