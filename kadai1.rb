class Menu
    attr_accessor :name
    attr_accessor :price

    def get_total_price(count)
        total_price = count * self.price
        if count >= 3 
            total_price = total_price - 10000
        end
        return puts "#{self.name} #{total_price} vnd"
    end
end

menu1 = Menu.new
menu1.name = "Pho"
menu1.price = 30000
puts "Nhap vao so bat pho: "
count = gets.to_i
menu1.get_total_price(count)