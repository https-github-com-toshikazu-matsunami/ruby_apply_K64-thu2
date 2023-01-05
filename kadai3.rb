class Menu
  attr_accessor :name
  attr_accessor :price

  def initialize(name, price)
    self.name = name
    self.price = price
  end
  def print_menu
    puts "#{name} #{price}vnd"
  end
end


class Drink < Menu 
  attr_accessor :size
  
  def initialize(name, price,size)
    super(name,price)
    @size = size
  end
  def print_menu
    puts "#{name} #{price}vnd (#{size}サイズ)"
  end
  
end


menu1 = Menu.new('Phở', 30_000)
menu2 = Menu.new('Bún chả', 40_000)
menu3 = Menu.new('Bánh mì', 20_000)
menu4 = Drink.new('Trà', 5_000,"S")
menu5 = Drink.new('Trà', 10_000,"M")

menu = [menu1, menu2, menu3, menu4, menu5]

menu.each do |e|
  e.print_menu
end