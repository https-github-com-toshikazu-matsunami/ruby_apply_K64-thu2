
class Menu
    attr_accessor :name, :price
end

menu1 = Menu.new
menu1.name = "pho"
menu1.price = 30000

menu2 = Menu.new
menu2.name = "bun cha"
menu2.price = 40000

menu3 = Menu.new
menu3.name = "banh mi"
menu3.price = 20000

arr = []

arr << {:name => menu1.name, :price => menu1.price}
arr << {:name => menu2.name, :price => menu2.price}
arr << {:name => menu3.name, :price => menu3.price}

arr.each do |menu|
    puts "#{menu[:name]} #{menu[:price]}"
end