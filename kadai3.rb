class Menu
 attr_accessor :name
 attr_accessor :price
  def initialize(name,price)
    self.name=name
    self.price=price
  end
  def display
    puts "#{self.name} #{self.price}vnd"
  end
end

class Drink < Menu
  attr_accessor :size
  def initialize(name, price, size)
    super(name, price)
    self.size = size
  end
  def display
    puts "#{self.name} #{self.price}vnd (#{self.size}サイズ)"
  end
end

menu1=Menu.new("Pho",30000)
menu2=Menu.new("Bun cha",40000)
menu3=Menu.new("Banh mi",20000)
drink1=Drink.new("Tra",5000,'S')
drink2=Drink.new("Tra",10000,'M')

menus=[menu1,menu2,menu3,drink1,drink2]
menus.each do|menu|
  menu.display
end