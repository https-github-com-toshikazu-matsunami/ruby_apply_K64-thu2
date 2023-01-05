class Menu 
  attr_accessor :name, :price

  def initialize(name, price) 
    @name = name
    @price = price
  end
  
  def info
    puts "#{@name} #{@price}vnd"
  end
end

class Drink < Menu
  attr_accessor :size
  def initialize(name, size, price) 
    super(name, price)
    @size = size
  end

  def info
    puts "#{@name} #{@price}vnd (#{@size}サイズ)"
  end
end
  

menu1 = Menu.new("pho", 30000)
menu2 = Menu.new("bun cha", 40000)
menu3 = Menu.new("banh mi", 20000)
menu4 = Drink.new("Tra", "S", 5000)
menu5 = Drink.new("Tra", "M", 10000)

menus = []
menus << menu1 << menu2 << menu3 << menu4 << menu5


menus.each do
  |menu|
  menu.info
end