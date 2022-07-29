puts "ただいまより、数字を当ててもらうゲームを始めます。"
puts "1から30までの整数を予想して下さい。"

result = rand(1..30)

pridect_num = gets.to_i
cnt = 0

loop do
  cnt += 1
  if result-2 <= pridect_num && pridect_num <= result+2
    puts "惜っしぃ！"
  end
  
  if pridect_num < result
    puts "その数より大きいよ〜"
  end

  if result < pridect_num
    puts "その数よりも小さいよ〜"
  end

  if result == pridect_num
    puts "#{cnt}回で当たりました🎉"
    break
  end

  pridect_num = gets.to_i
end
