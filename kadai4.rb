class Bingo
  attr_accessor :Bcol #B column
  attr_accessor :Icol
  attr_accessor :Ncol
  attr_accessor :Gcol
  attr_accessor :Ocol

  def initialize
    self.Bcol=(1..15).to_a.sample(5)
    self.Icol=(16..30).to_a.sample(5)
    self.Ncol=(31..45).to_a.sample(5)
    self.Ncol[2]=""
    self.Gcol=(46..60).to_a.sample(5)
    self.Ocol=(61..75).to_a.sample(5)    
  end
  def display_row(i)
    puts "%2s | %2s | %2s | %2s | %2s" % [self.Bcol[i],self.Icol[i],self.Ncol[i],self.Gcol[i],self.Ocol[i]]
  end
  end

bingo=Bingo.new
puts "%2s | %2s | %2s | %2s | %2s" % ["B","I","N","G","O"]
(0..4).each do|i|
  bingo.display_row(i)
end
