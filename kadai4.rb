class BingoBoard
  attr_accessor :bingo_board, :letters
  def initialize
    @letters = ["B","I","N","G","O"]
    @bingo_board = [(1..15).to_a.sample(5),
                    (16..30).to_a.sample(5),
                    (31..45).to_a.sample(5),
                    (46..60).to_a.sample(5), 
                    (61..75).to_a.sample(5)].transpose
    bingo_board[2][2] = " "
  end
  
  def display_board
    puts letters.map { |i| i.to_s.rjust(3) }.join(" |")
    puts bingo_board.map { |a| a.map { |i| i.to_s.rjust(3) }.join(" |") }
  end
end

myboard = BingoBoard.new
myboard.display_board