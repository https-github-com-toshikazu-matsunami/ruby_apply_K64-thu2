class Bingo
    attr_accessor :_start
    attr_accessor :_end
    attr_accessor :character
    def initialize(_start:, _end:,character:)
        self._start = _start
        self._end = _end
        self.character = character
    end
    def rand
        return Random.rand(self._start..self._end)
    end
    def get_character
        return self.character
    end
end
array = []
array.push(Bingo.new(character: "B", _start: 1, _end:15))
array.push(Bingo.new(character: "I", _start: 16, _end:30))
array.push(Bingo.new(character: "N", _start: 31, _end:45))
array.push(Bingo.new(character: "G", _start: 46, _end:60))
array.push(Bingo.new(character: "O", _start: 61, _end:75))

(0..5).each do |i|
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
        puts ""
    end
end