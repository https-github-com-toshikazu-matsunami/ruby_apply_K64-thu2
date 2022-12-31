require_relative '日本語の番号'

def 䛿改行なしで出力(文字列)
  print 文字列
end

def カーネル
  return Kernel
end

class Object
  def 打ち切る(文字列)
    abort(文字列)
  end
end

# class Hash
#   def キー？(キー)
#     key?(キー)
#   end
# end

def 䛿改行ありで出力(文字列)
  puts 文字列
end

def 標準入力
  return gets
end

def 丸
  return true
end

def バツ
  return false
end

class String
  def 改行コードを取り除う
    chomp
  end
  # def はぎ取る
  #   strip
  # end
  def 整数になる
    to_i
  end
end

# class Integer
#   def 偶？
#     even?
#   end
# end

class Array
  def 押す(物)
    push(物)
  end
  def シャッフル
    shuffle
  end
end

def 空の配列
  return []
end

def エス
  return "S"
end

def エム
  return "M"
end
