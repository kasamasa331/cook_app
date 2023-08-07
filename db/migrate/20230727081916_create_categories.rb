class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end
    categories = [
      { "name": "穀物・豆類" },
      { "name": "卵・乳製品" },
      { "name": "肉" },
      { "name": "野菜" },
      { "name": "果物" },
      { "name": "調味料" },
      { "name": "アルコール" },
      { "name": "海藻・乾物" },
      { "name": "粉物・製菓材料" },
      { "name": "キノコ" },
      { "name": "その他" },
      { "name": "スパイス・ハーブ" },
      { "name": "魚介類" }
    ]
    
    categories.each do |category|
      # 登録処理の記述
      data = Category.new(category)
      data.save
    end
  end
end
