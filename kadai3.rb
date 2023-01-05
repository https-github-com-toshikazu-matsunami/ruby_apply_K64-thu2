class Menu
  attr_accessor :name
  attr_accessor :price
  def initialize(name,price)
    self.name=name
    self.price=price
  end
  def show_menu()
    return "#{self.name} #{self.price}vnd"
  end
end
class Drink < Menu
  attr_accessor :size
  def initialize(name:,price:,size:)
    super(name,price)
    self.size=size
  end
  def show_menu()
    return super() + " vnd (" + self.size + " サイズ)"
  end
end
menu1=Menu.new("Phở",30000)
menu2=Menu.new("Bún chả",40000)
menu3=Menu.new("Bánh mì",20000)
drink1 = Drink.new(name: "Tra", price: 5000, size: "S")
drink2 = Drink.new(name: "Tra", price: 10000, size: "M")
menus=[menu1,menu2,menu3]
drinks=[drink1,drink2]
menus.each do |menu|
  puts menu.show_menu()
end
drinks.each do |drink|
    puts drink.show_menu()
end