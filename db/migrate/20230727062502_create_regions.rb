class CreateRegions < ActiveRecord::Migration[7.0]
  def change
    create_table :regions do |t|
      t.string :name

      t.timestamps
    end
    #地域登録
    regions = [
      { "name": "東アジア" },
      { "name": "東南アジア" },
      { "name": "南・西アジア" },
      { "name": "北アメリカ" },
      { "name": "南アメリカ" },
      { "name": "ヨーロッパ" },
      { "name": "オセアニア" },
      { "name": "アフリカ" }
    ]
    
    regions.each do |region|
      #登録処理の記述
      data=Region.new(region)
      data.save
    end
  end
end
