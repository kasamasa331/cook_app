class CreateUserProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
