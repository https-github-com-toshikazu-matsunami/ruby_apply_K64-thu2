class Menu
  
  attr_accessor :name
  attr_accessor :price

  def initialize(name, price)
    self.name = name
    self.price = price
  end
  
  def info
    puts "#{self.name} #{self.price}vnd"
  end
end

menu1 = Menu.new("Phở", 30000)
menu2 = Menu.new("Bún chả", 40000)
menu3 = Menu.new("Bánh mì", 20000)

menus = [menu1, menu2, menu3]

menus.each do |menu|
  menu.info
end
