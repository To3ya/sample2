humans=[]
3.times do |n|
  human={}
  puts "名前を入力してください"
  human[:name] = gets.chomp
  puts "身長を入力してください"
  human[:height] = gets.to_i
  humans << human
end

p humans
humans.each do |n|
  if n[:height] < 130
    puts n[:name].to_s + "はだめ〜"
  else
    puts n[:name].to_s + "はいいよ〜"
  end
end