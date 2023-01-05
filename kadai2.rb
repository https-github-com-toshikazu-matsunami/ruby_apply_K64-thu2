class Menu 
  attr_accessor :name, :price

  def initialize(name, price) 
    @name = name
    @price = price
  end
  
  def showMenu()
    puts "#{@name} #{@price}"
  end
end

menu1 = Menu.new("pho", "30000vnd")
menu2 = Menu.new("bun cha", "40000vnd")
menu3 = Menu.new("banh mi", "20000vnd")

menus = []
menus << menu1
menus << menu2
menus << menu3

menus.each do
  |menu|
  menu.showMenu()
end