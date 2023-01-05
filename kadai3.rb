class Menu
    attr_accessor :name, :price
    def initialize(name:, price:)
        self.name = name
        self.price = price
    end
end

class Drink < Menu
    attr_accessor :size
    def initialize(name:, price:, size:)
        super(name: name, price: price)
        self.size = size
    end
end

menu1 = Menu.new(name: "Pho", price: 30000)
menu2 = Menu.new(name: "Bun cha", price: 40000)
menu3 = Menu.new(name: "Banh mi", price: 20000)

drink1 = Drink.new(name: "tra", price: 5000, size: "S size")
drink2 = Drink.new(name: "tra", price: 10000, size: "M size")

menus = []
menus << {:name => menu1.name, :price => menu1.price}
menus << {:name => menu2.name, :price => menu2.price}
menus << {:name => menu3.name, :price => menu3.price}

menus << {:name => drink1.name, :price => drink1.price, :size => drink1.size}
menus << {:name => drink2.name, :price => drink2.price, :size => drink2.size}

menus.each do |menu|
    if menu[:size]
        puts "#{menu[:name]} #{menu[:price]} #{menu[:size]}"
    else
        puts "#{menu[:name]} #{menu[:price]}"
    end
end
