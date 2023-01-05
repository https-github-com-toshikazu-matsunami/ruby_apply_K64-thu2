class Menu
 attr_accessor :name
 attr_accessor :price
  # get_total_priceメソッドを定義してください
  def initialize(name, price)
    @name = name
    @price = price
  end
  def print_list
    puts "#{name} #{price}vnd"
  end
end

menu1 = Menu.new('Phở', 30_000)
menu2 = Menu.new('Bún chả', 40_000)
menu3 = Menu.new('Bánh mì', 20_000)
menu = [menu1, menu2, menu3]

class Drink < Menu
  attr_accessor :size

  def initialize(name, price, size)
    super(name, price)
    @size = size
  end

  def print_list
    puts "#{name} #{price} vnd #{size}"
  end
end
drink1 = Drink.new('Trà', 5000, '(Sサイズ)')
drink2 = Drink.new('Trà', 10_000, '(Mサイズ)')
menu << drink1
menu << drink2
# menu1に対してget_total_priceメソッドを呼び出してください 
menu.each do |i|
  i.print_list
end