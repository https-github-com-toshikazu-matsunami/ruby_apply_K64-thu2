require_relative '日本語'

class Menu
 # attr_accessor :料理名, :値段
  
  def initialize(料理名, 値段)
    @料理名 = 料理名
    @値段 = 値段
  end
  
  def 一覧表示
    䛿改行ありで出力("#{@料理名} #{@値段}vnd")
  end
  
end

class Drink < Menu
  attr_accessor :サイズ
  
  def initialize(料理名, 値段, サイズ)
    super(料理名, 値段)
    @サイズ = サイズ
  end

  def 一覧表示
    䛿改行ありで出力("#{@料理名} #{@値段} vnd (#{@サイズ}サイズ)")
  end
  
end

メニューの一覧=空の配列
メニューの一覧.押す(Menu.new("Phở", 三万))
メニューの一覧.押す(Menu.new("Bún chả", 四万))
メニューの一覧.押す(Menu.new("Bánh mì", 二万))
メニューの一覧.押す(Drink.new("Trà", 五千, エス))
メニューの一覧.押す(Drink.new("Trà", 一万, エム))
メニューの一覧.each{|メニュー| メニュー.一覧表示}