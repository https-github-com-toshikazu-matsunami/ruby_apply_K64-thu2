class Menu
    attr_accessor :name
    attr_accessor :price
      def in
      return "#{self.name} #{price}vnd"
    end
   end
   
   menu1 = Menu.new
   menu1.name = "Phở"
   menu1.price = 30000
   menu2 = Menu.new
   menu2.name = "Bún chả"
   menu2.price = 40000
   menu3 = Menu.new
   menu3.name = "Bánh mì"
   menu3.price=20000
   menus=[]
   menus.push(menu1)
   menus.push(menu2)
   menus.push(menu3)
   menus.each do|menu|
    puts menu.in
   end
  
   
   # menu1に対してget_total_priceメソッドを呼び出してください
   
   