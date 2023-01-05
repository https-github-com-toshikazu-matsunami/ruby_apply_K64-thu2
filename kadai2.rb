class Menu
    attr_accessor :name
    attr_accessor :price
    def initialize(name:, price:)
        self.name = name
        self.price = price
    end
    def show_menu()
        return "#{self.name} #{self.price}"
    end
end
menu1 = Menu.new(name: "Pho", price: 30000)
menu2 = Menu.new(name: "Bun cha", price: 40000)
menu3 = Menu.new(name: "Banh mi", price: 20000)
menus = [menu1, menu2, menu3]
menus.each do |menu|
   puts menu.show_menu()
end
