class Bingo
    attr_accessor :start
    attr_accessor :_end
    attr_accessor :character
    def initialize(start:, _end:,character:)
        self.start = start
        self._end = _end
        self.character = character
    end
    def rand
        return Random.rand(self.start..self._end)
    end
    def get_character
        return self.character
    end
end
array = []
array.push(Bingo.new(character: "B", start: 1, _end:15))
array.push(Bingo.new(character: "I", start: 16, _end:30))
array.push(Bingo.new(character: "N", start: 31, _end:45))
array.push(Bingo.new(character: "G", start: 46, _end:60))
array.push(Bingo.new(character: "O", start: 61, _end:75))

6.times do |i|
    if i == 0 
        j = 0
        array.each do |item|
            if j > 0 && j < 5
                print "|"
            end
            print " " + item.get_character + ""
            j = j + 1
        end
        puts ''
    else
        j = 0
        array.each do |item|
            if j > 0 && j < 5
                print "|"
            end
            if j !=2 || i !=3 
                print item.rand.to_s.rjust(2) + ""
            else
                print "  "
            end
            j = j + 1
        end
        puts " "
    end
end