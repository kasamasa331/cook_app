class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.references :recipe, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :rating_value
      t.string :rating_comment
      t.date :rating_date

      t.timestamps
    end
  end
end
