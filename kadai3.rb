class Menu
    attr_accessor :name
    attr_accessor :price
    def initialize(name:, price:)
        self.name = name
        self.price = price
    end
    def show_menu(count)
        return "#{self.name} #{self.price}"
    end
end
class Drink < Menu
    attr_accessor :size
    def initialize(name:, price:, size:) #override
        super(name:, price:)
        self.size = size
    end
    def show_menu(count) #override
        return super(count) + '(' + self.size + " サイズ)"
    end
end
menu1 = Menu.new(name: "Pho", price: 30000)
menu2 = Menu.new(name: "Bun cha", price: 40000)
menu3 = Menu.new(name: "Banh mi", price: 20000)
drink1 = Drink.new(name: "Tra", price: 5000, size: "S")
drink2 = Drink.new(name: "Tra", price: 10000, size: "M")
menus = [menu1, menu2, menu3]
drinks = [drink1, drink2]
menus.each do |menu|
    puts menu.show_menu(0)
end
drinks.each do |drink|
    puts drink.show_menu(0)
end

