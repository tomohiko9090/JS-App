# 勝ち負け判定
def judge(you, enemy, number_of_winnig)
  p "a [Attack] OR d [Defense] : "
  p command = gets.to_s

  case command
  when "a"
    if you < enemy 
      puts "You lose"
    end
    if enemy < you
      puts "You win"
      number_of_winnig += 1
    end

  when "d"
    if you < enemy
      puts "You win"
      number_of_winnig += 1
    end
    if enemy < you 
      puts "You lose"
    end
  end
end



number_of_winnig = 0

5.times do

  # 自分と敵の値を決める
  loop do
    you = rand(9)
    enemy = rand(9)
    if you == enemy
      break
    end
  end

  # 伝える
  puts "You: #{you} Enemy: #{enemy}"

  # you,enemy → 
  judge(you, enemy, number_of_winnig)

end
puts ""



