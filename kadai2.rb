class Menu
  attr_accessor :name
  attr_accessor :price
  # get_total_priceメソッドを定義してください
  def initialize (name,price)
    self.name = name
    self.price = price
  end
end

menu1 = Menu.new("Phở",30000)
menu2 = Menu.new("Bún chả",40000)
menu3 = Menu.new("Bánh mì",20000)

menus = []
menus << menu1
menus << menu2
menus << menu3

menus.each do |menus|
  puts "#{menus.name} #{menus.price}vnd "
end