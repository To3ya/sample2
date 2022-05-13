num = 100
puts num


num = "100"
puts num

num = 200
puts num

def sample
  puts "これはメソッドです"
end

sample
#=> 「これはメソッドです」が出力される

# true = "test true"

fruits = ["apple", "banana","lemon"]

puts fruits[0]
puts fruits[1]

fruits = ["apple"]

# どちらも配列の最後に要素を追加する
fruits.push("banana")
p fruits #=> ["apple", "banana"]

fruits << "lemon"
p fruits #=> ["apple", "banana", "lemon"]

hash = {}
hash = Hash.new


#ハッシュの定義方法
fruits = {"apple" => 100, "banana" => 60,"lemon" => 150}
p fruits

fruits = {apple: 100, banana: 60,lemon: 150}
p fruits
puts fruits[:apple]

fruits[:apple] = 130
p fruits

#要素の追加
fruits[:orange] = 90
p fruits


#四則演算
puts 1000 + 2000

puts 3000 - 1500

puts 50 * 40

puts 600 / 15

puts 5 % 2

num = 1
puts num

num += 1
puts num

num -= 1
puts num

# if 条件式 (then)
#   trueの時に実行する処理
# else
#   falseの時に実行する処理
# end

if true
  puts "OK"
else
  puts "NG"
end

# else → elsif 条件式
num = 1

if num == 0
  puts "zero"
elsif num == 1
  puts "one"
end

# trueの時に実行する処理 if 条件式
puts "OK" if true

# unless 条件式 (then)
#   falseの時に実行する処理
# else
#   trueの時に実行する処理
# end
unless false
  puts "OK"
else
  puts "NG"
end

# case 評価対象
# when 値1 (then)
#   値1と一致した場合に実行する処理
# when 値2 (then)
#   値2と一致した場合に実行する処理
# else
#   どの値にも一致しない場合に実行する処理
# end

num = 1

case num
when 0
  puts "zero"
when 1
  puts "one"
when 2,3,5,7 #条件は複数指定することも出来る
  puts "prime"
when 100..1000 #範囲オブジェクトで指定することも出来る
  puts "over 100"
else
  puts "unknown"
end


# while 条件式 (do)
#   条件が一致した場合実行する処理
# end

arr = []

# 配列のサイズが、3より小さい間は処理を実行する
arr << "hoge" while arr.size < 3

p arr #=>["hoge", "hoge","hoge"]

arr = []

# 配列のサイズが、３より小さい間は処理を実行する
arr << "hoge" while arr.size < 3

p arr  #=> ["hoge", "hoge", "hoge"]


# 繰り返し回数.times do
#   実行する処理
# end
5.times do
  puts "OK"
end

#---実行結果---
#=> OK
#=> OK
#=> OK
#=> OK
#=> OK

# 対象のデータ.each do |引数|
#   実行する処理
# end

numbers = [1, 2, 3, 4, 5]

# 配列 numbers の要素の数だけ繰り返す
# 繰り返し毎に、取り出した要素が num に格納される
numbers.each do |num|
  puts num
end

#---実行結果---
#=> 1
#=> 2
#=> 3
#=> 4
#=> 5


# メソッドについて
# Rubyにおけるメソッドは、レシーバによって大きく3種類に分けられます。

# ①インスタンスメソッド
# ・インスタンスをレシーバに指定して実行する

# ②クラスメソッド
# ・クラスをレシーバに指定して実行する

# ③プライベートメソッド
# ・レシーバを指定せずに実行する

# ちなみにレシーバとは、メソッドを実行する際のターゲットになるオブジェクトです。
# 例えば、以下のeachメソッドであれば、numbersがレシーバになります。
numbers.each do |num|
  puts num
end

# def メソッド名
#   処理内容
# end

def to_answer(answer)
  puts "答えは#{answer}です"
end

to_answer(8)  #=> 答えは8です

# クラス定義内`class ~ end`で定義する
class Sample
  def to_answer(answer)
    puts "答えは#{answer}です"
  end
end

sample = Sample.new
sample.to_answer(8)  #=> 答えは8です

# def クラス名.メソッド名
#   処理内容
# end

class Sample
end

def Sample.to_answer(answer)
  puts "答えは#{answer}です"
end

Sample.to_answer(8)  #=> 答えは8です

class Sample
  def self.to_answer(answer)
    puts "答えは#{answer}です"
  end
end

Sample.to_answer(8)  #=> 答えは8です

class Sample
  class << self
    def to_questions(elem1, elem2)
      puts "#{elem1} + #{elem2} はいくつ？"
    end

    def to_answer(answer)
      puts "答えは#{answer}です"
    end
  end
end

Sample.to_questions(3, 5)  #=> 3 + 5 はいくつ？
Sample.to_answer(8)  #=> 答えは8です

# private記述以降に定義する

private  # これ以降のメソッドがプライベートメソッドになる
def to_answer(answer)
  puts "答えは#{answer}です"
end

to_answer(8)  #=> 答えは8です