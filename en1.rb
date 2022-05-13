puts "入力してください"
num = gets.to_i

if num <= 0
  puts "0以下の数字です"
elsif num >= 10
  puts "10以上の数字です"
elsif 1 <= num && num <= 9
  puts "0より大きく10より小さい数字です"
end