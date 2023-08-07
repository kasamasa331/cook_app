class CreateCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :countries do |t|
      t.references :region, foreign_key: true
      t.string :name

      t.timestamps
    end
    #国登録
    countries = [
      { "name": "日本" },
      { "name": "イタリア" },
      { "name": "フランス" },
      { "name": "インド" },
      { "name": "メキシコ" },
      { "name": "タイ" },
      { "name": "スペイン" },
      { "name": "中国" },
      { "name": "ギリシャ" },
      { "name": "レバノン" },
      { "name": "ベトナム" },
      { "name": "韓国" },
      { "name": "ブラジル" },
      { "name": "アメリカ" },
      { "name": "イギリス" },
      { "name": "インドネシア" },
      { "name": "オーストラリア" },
      { "name": "ドイツ" },
      { "name": "ポルトガル" },
      { "name": "エジプト" },
      { "name": "カナダ" },
      { "name": "アルゼンチン" },
      { "name": "モロッコ" },
      { "name": "オーストリア" },
      { "name": "ニュージーランド" },
      { "name": "チリ" },
      { "name": "マレーシア" },
      { "name": "ベルギー" },
      { "name": "スウェーデン" },
      { "name": "ノルウェー" },
      { "name": "フィンランド" },
      { "name": "デンマーク" },
      { "name": "アイスランド" },
      { "name": "アイルランド" },
      { "name": "スイス" },
      { "name": "オランダ" },
      { "name": "ポーランド" },
      { "name": "ハンガリー" },
      { "name": "ロシア" },
      { "name": "トルコ" },
      { "name": "エチオピア" },
      { "name": "エクアドル" },
      { "name": "カメルーン" },
      { "name": "ボリビア" },
      { "name": "ノルウェー" },
      { "name": "ニュージーランド" },
      { "name": "パキスタン" },
      { "name": "チュニジア" }
    ]
    countries.each do |country|
  #登録処理の記述
     data=Country.new(country)
     data.save
    end
  end
end
