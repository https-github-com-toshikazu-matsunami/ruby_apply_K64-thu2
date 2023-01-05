class Menu
  attr_accessor :name
  attr_accessor :price
  # get_total_priceメソッドを定義してください
  def initialize(name, price)
    self.name = name
    self.price = price
  end

  def get_price
    "#{name} #{price}vnd"
  end

  def get_total_price(count)
    total_price = count * price
    total_price -= 10_000 if count >= 3

    "#{name} #{total_price}vnd"
  end
end

class Drink < Menu
  attr_accessor :size

  def initialize(name, price, size)
    super(name, price)
    self.size = size
  end

  def get_price
    "#{name} #{price}vnd #{size}"
  end
end

menus = []

menu1 = Menu.new('Phở', 30_000)

# menu1に対してget_total_priceメソッドを呼び出してください
menu2 = Menu.new('Bún chả', 40_000)

tomenu3 = Menu.new('Bánh mỳ', 20_000)

menu4 = Drink.new('Trà', 5_000, '(Sサイズ)')

menu5 = Drink.new('Trà', 10_000, '(Mサイズ)')

menus.push(menu1, menu2, menu3, menu4, menu5)

menus.each do |menu|
  puts menu.get_price
end
