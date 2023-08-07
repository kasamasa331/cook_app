class CreateTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :types do |t|
      t.string :name

      t.timestamps
    end
    types = [
      { "name": "サラダ" },
      { "name": "ご飯もの" },
      { "name": "グラタン・ドリア" },
      { "name": "パスタ" },
      { "name": "卵料理" },
      { "name": "定番" },
      { "name": "おつまみ" },
      { "name": "揚げ物" },
      { "name": "汁物・スープ" },
      { "name": "炒め物" },
      { "name": "煮物" },
      { "name": "粉物" },
      { "name": "肉料理" },
      { "name": "デザート・お菓子" },
      { "name": "野菜料理" },
      { "name": "パン" },
      { "name": "飲み物" },
      { "name": "魚介類" },
      { "name": "鶏肉料理" },
      { "name": "ハラール" },
      { "name": "麺類" },
      { "name": "ヘルシー" },
      { "name": "節約" },
      { "name": "日本料理" },
      { "name": "中華料理" },
      { "name": "西洋料理" },
      { "name": "パーティー" },
      { "name": "クリスマス" },
      { "name": "ハロウィン" }
    ]
    
    types.each do |type|
      # 登録処理の記述
      data = Type.new(type)
      data.save
    end 
  end
end
