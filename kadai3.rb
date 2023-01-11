class Menu
  attr_accessor :name
  attr_accessor :price
  
  def initialize(name,price)
    self.name = name
    self.price = price
  end
  
  def print_menu
    puts "#{self.name} - #{self.price}vnd"
  end
end

class Drink < Menu
  attr_accessor :size
  def initialize(name,price,size)
    super(name,price)
    self.size = size
  end
  def print_menu
    puts "#{self.name} - #{self.price}vnd - (#{self.size}サイズ)"
  end
end
  
menu1 = Menu.new("pho",30000)
menu2 = Menu.new("bun cha",40000)
menu3 = Menu.new("banh mi",20000)
drink1 = Drink.new("Tra",5000,"S")
drink2 = Drink.new("Tra",10000,"M") 
menu = [menu1,menu2,menu3,drink1,drink2]

for i in 0..4 do
  menu[i].print_menu
end