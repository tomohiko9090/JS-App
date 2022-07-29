# 勝ち負け判定メソッド
def judge(you, enemy, number_of_winnig)
  start_time = Time.now
  print "a [Attack] OR d [Defense] : "
  command = gets.chomp
  
  # コマンドミス→即負け
  if command != "a" && command != "d"
    puts "Command error"
    return number_of_winnig
  end

  # 2秒以上経過→即負け
  if 2 <= (Time.now - start_time) 
    puts "Time over"
    return number_of_winnig
  end

  case command
  when "a"
    if you < enemy 
      puts "You lose"
      return number_of_winnig
    end
    if enemy < you
      puts "You win"
      number_of_winnig += 1
      return number_of_winnig
    end

  when "d"
    if you < enemy
      puts "You win"
      number_of_winnig += 1
      return number_of_winnig
    end
    if enemy < you 
      puts "You lose"
      return number_of_winnig
    end
  end
end

number_of_winnig = 0

5.times do |i|
  you = 0
  enemy = 0 

  # ①自分と敵の値を決める
  loop do
    you = rand(9)
    enemy = rand(9)
    if you != enemy
      break
    end
  end
  
  # ②数字を報告
  puts "You: #{you} Enemy: #{enemy}"

  # ③対決
  number_of_winnig = judge(you, enemy, number_of_winnig)

end

# ④結果発表
puts "#{number_of_winnig}勝#{5-number_of_winnig}敗"
