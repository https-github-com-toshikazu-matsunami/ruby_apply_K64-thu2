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
menus=[]
menu1=Menu.new("Pho",30000)
menus.push(menu1)
menu2=Menu.new("Bun cha",40000)
menus.push(menu2)
menu3=Menu.new("Banh mi",20000)
menus.push(menu3)

menus.each do|menu|
  menu.display
end