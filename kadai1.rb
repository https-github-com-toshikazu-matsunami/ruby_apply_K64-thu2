require_relative '日本語'

def 正の整数？(文字列)
  return バツ unless 文字列 =~ /^[1-9]\d*$/
  return 丸
end

class Menu
 attr_accessor :料理名, :金額
  # get_total_priceメソッドを定義してください
  def 合計金額を求める
    䛿改行なしで出力("Phở がいくつですか？ > ")
    量 = 標準入力.改行コードを取り除う
    if !正の整数？(量)
      カーネル.打ち切る("正の整数ではありません")
    end
      量 = 量.整数になる
      合計金額 = @金額 * 量
    return "#{@料理名} #{合計金額}vnd" unless 量 > 二
    合計金額 -= 一万
    return "#{@料理名} #{合計金額}vnd"
 end
end

メニュー = Menu.new
メニュー.料理名 = "Phở"
メニュー.金額 = 三万
䛿改行ありで出力(メニュー.合計金額を求める)

# メニューに対してget_total_priceメソッドを呼び出してください

