class Bingo
  attr_accessor :col_B
  attr_accessor :col_I
  attr_accessor :col_N
  attr_accessor :col_G
  attr_accessor :col_O
  
  def initialize
    @col_B = (1..15).to_a.sample(5)
    @col_I = (16..30).to_a.sample(5)
    @col_N = (31..45).to_a.sample(5)
    @col_G = (46..60).to_a.sample(5)
    @col_O = (61..75).to_a.sample(5)
    @col_N[2] = " "
  end
  
  def show
    puts " B |  I |  N |  G |  O"
    (0..4).each do |i|
      puts "#{@col_B[i].to_s.rjust(2)} | " + "#{@col_I[i].to_s.rjust(2)} | " + "#{@col_N[i].to_s.rjust(2)} | " + "#{@col_G[i].to_s.rjust(2)} | " + "#{@col_O[i].to_s.rjust(2)}"
    end
  end 
end

bingo = Bingo.new
bingo.show