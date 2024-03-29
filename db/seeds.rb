# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ingredients = [
    { "name": "米" },
    { "name": "卵" },
    { "name": "鶏肉" },
    { "name": "牛肉" },
    { "name": "豚肉" },
    { "name": "白菜" },
    { "name": "にんじん" },
    { "name": "ピーマン" },
    { "name": "じゃがいも" },
    { "name": "トマト" },
    { "name": "キュウリ" },
    { "name": "ほうれん草" },
    { "name": "セロリ" },
    { "name": "ブロッコリー" },
    { "name": "カリフラワー" },
    { "name": "アボカド" },
    { "name": "リンゴ" },
    { "name": "オレンジ" },
    { "name": "バナナ" },
    { "name": "いちご" },
    { "name": "ぶどう" },
    { "name": "さくらんぼ" },
    { "name": "マンゴー" },
    { "name": "桃" },
    { "name": "メロン" },
    { "name": "パインアップル" },
    { "name": "アスパラガス" },
    { "name": "マッシュルーム" },
    { "name": "オクラ" },
    { "name": "ズッキーニ" },
    { "name": "エンドウ" },
    { "name": "ラディッシュ" },
    { "name": "ゴーヤ" },
    { "name": "キャベツ" },
    { "name": "レタス" },
    { "name": "オニオン" },
    { "name": "ニンニク" },
    { "name": "しょうが" },
    { "name": "ネギ" },
    { "name": "ベーコン" },
    { "name": "サーモン" },
    { "name": "マグロ" },
    { "name": "イカ" },
    { "name": "エビ" },
    { "name": "ホタテ" },
    { "name": "カキ" },
    { "name": "アンチョビ" },
    { "name": "パスタ" },
    { "name": "パン" },
    { "name": "チーズ" },
    { "name": "ヨーグルト" },
    { "name": "牛乳" },
    { "name": "豆乳" },
    { "name": "バター" },
    { "name": "生クリーム" },
    { "name": "豆腐" },
    { "name": "納豆" },
    { "name": "キムチ" },
    { "name": "塩" },
    { "name": "砂糖" },
    { "name": "醤油" },
    { "name": "みそ" },
    { "name": "マヨネーズ" },
    { "name": "ケチャップ" },
    { "name": "酢" },
    { "name": "オリーブオイル" },
    { "name": "ごま油" },
    { "name": "サラダ油" },
    { "name": "胡椒" },
    { "name": "カレーパウダー" },
    { "name": "チリパウダー" },
    { "name": "シナモン" },
    { "name": "ナツメグ" },
    { "name": "クミン" },
    { "name": "ターメリック" },
    { "name": "クローブ" },
    { "name": "コリアンダー" },
    { "name": "カルダモン" },
    { "name": "ローリエ" },
    { "name": "星形アニス" },
    { "name": "バニラエクストラクト" },
    { "name": "ココアパウダー" },
    { "name": "コーヒー" },
    { "name": "茶葉" },
    { "name": "緑茶" },
    { "name": "大豆" },
    { "name": "レンズ豆" },
    { "name": "ひよこ豆" },
    { "name": "黒豆" },
    { "name": "枝豆" },
    { "name": "とうもろこし" },
    { "name": "ナス" },
    { "name": "サツマイモ" },
    { "name": "かぼちゃ" },
    { "name": "リーキ" },
    { "name": "フェンネル" },
    { "name": "ルッコラ" },
    { "name": "ミント" },
    { "name": "バジル" },
    { "name": "パセリ" },
    { "name": "タイム" },
    { "name": "ローズマリー" },
    { "name": "オレガノ" },
    { "name": "セージ" },
    { "name": "ダイル" },
    { "name": "コリアンダーリーフ" },
    { "name": "シソ" },
    { "name": "ねぎ" },
    { "name": "わさび" },
    { "name": "からし" },
    { "name": "ゴマ" },
    { "name": "アーモンド" },
    { "name": "カシューナッツ" },
    { "name": "ピーナッツ" },
    { "name": "ウォールナッツ" },
    { "name": "ピスタチオ" },
    { "name": "マカダミアナッツ" },
    { "name": "はちみつ" },
    { "name": "メープルシロップ" },
    { "name": "砂糖" },
    { "name": "あんこ" },
    { "name": "チョコレート" },
    { "name": "ココナッツミルク" },
    { "name": "ホイップクリーム" },
    { "name": "クリームチーズ" },
    { "name": "モッツァレラチーズ" },
    { "name": "パルメザンチーズ" },
    { "name": "ブルーチーズ" },
    { "name": "ゴーダチーズ" },
    { "name": "チェダーチーズ" },
    { "name": "豆板醤" },
    { "name": "ゴマペースト" },
    { "name": "ガーリックパウダー" },
    { "name": "オニオンパウダー" },
    { "name": "パプリカパウダー" },
    { "name": "オートミール" },
    { "name": "ブラウンライス" },
    { "name": "コシヒカリ" },
    { "name": "インディカ米" },
    { "name": "ジャスミン米" },
    { "name": "バジリコソース" },
    { "name": "ボロネーゼソース" },
    { "name": "ホワイトソース" },
    { "name": "デミグラスソース" },
    { "name": "トマトソース" },
    { "name": "チリソース" },
    { "name": "ワカモレ" },
    { "name": "タバスコ" },
    { "name": "ビール" },
    { "name": "ワイン" }
]

ingredients.each do |ingredient|
    Ingredient.create!(
        { name: ingredient[:name]}
    )
end