class Menu
  attr_accessor :name
  attr_accessor :price
  def initialize(name:, price:)
    self.name = name
    self.price = price
  end

  def info
    "#{name} #{price}vnd #"
  end
end
class Drink < Menu
  attr_accessor :size
  def initialize(name:, price:, size:)
    super(name: name, price: price)
    self.size = size
  end

  def info
    "#{name} #{price}vnd (#{size}サイズ)"
  end
end
menu1 = Menu.new(name: 'pho', price: 30_000)
menu2 = Menu.new(name: 'bun cha', price: 40_000)
menu3 = Menu.new(name: 'banh my', price: 20_000)
drink1 = Drink.new(name: 'tra', price: 5000, size: 'S')
drink2 = Drink.new(name: 'tra', price: 10_000, size: 'M')
menus = [menu1, menu2, menu3, drink1, drink2]
menus.each do |menu|
  puts menu.info
end
