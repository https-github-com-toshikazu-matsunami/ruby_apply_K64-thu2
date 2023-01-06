class Bingo
  
  attr_accessor :b
  attr_accessor :i
  attr_accessor :n
  attr_accessor :g
  attr_accessor :o

  def initialize
    self.b = (1..15).to_a.sample(5)
    self.i = (16..30).to_a.sample(5)
    self.n = (31..45).to_a.sample(5)
    self.n[2] = " "
    self.g = (46..60).to_a.sample(5)
    self.o = (61..75).to_a.sample(5)
  end

  def show_bingo_card

    letters = ["B", "I", "N", "G", "O"]

    letters.each_with_index do |letter, index|
        print " " + letter.rjust(2) + " "
        print "|" if index < 4
    end
    print "\n"
    
    cols = [self.b, self.i, self.n, self.g, self.o]

    [*0..4].each do |i|
      cols.each_with_index do |col, index|
        print " " + col[i].to_s.rjust(2) + " "
        print "|" if index < 4
      end
      print "\n"
    end
  end
  
end

card1 = Bingo.new
card1.show_bingo_card
