# 1. 被りがない3桁の数字をランダムに生成し、その答えを当てるゲームです（例: 〇249　×223）
# 2. ユーザー入力を受け付けて3桁の数字を入力してもらいます
# 3. 答えの数字と桁と数の両方があっていれば「ヒット」、桁は違うが同じ数字が使われている場合は「ブロー」となります
# 4. 例えば答えが249なら、496は「0ヒット 2ブロー」、942なら「1ヒット 2ブロー」です
# 5. 0から9で重複しない3桁の数字をランダムに生成し、ユーザから受け取った3桁の数字と比較して、ヒットとブローを判定するプログラムを書いてください
# 6. 3ヒットになるまで入力を受け取り続け、正解が出たらそれまでに繰り返した回数を表示し、ゲームを終了させてください



# 3桁作成メソッド
def generateNumber
    loop do
        p @result_hundreds_place = rand(9) 
        p @result_tens_place = rand(9) 
        p @result_ones_place = rand(9) 
        if @result_ones_place != @result_tens_place && @result_ones_place != @result_hundreds_place && @result_tens_place != @result_hundreds_place
            break
        end
    end
    return @result_hundreds_place, @result_tens_place, @result_ones_place
end


# 数字判定メソッド
def judge(result_hundreds_place, result_tens_place, result_ones_place)

    $number_of_answers += 1

    result_number_list = [result_hundreds_place, result_tens_place, result_ones_place]

    print "３桁の数字を入力："
    pridect_number_list = gets.chomp.split("").map { |i| i.to_i }
    p pridect_number_list
    pridect_hundreds_place = pridect_number_list[0]
    pridect_tens_place = pridect_number_list[1]
    pridect_ones_place = pridect_number_list[2]

    hit_cnt = 0
    if result_hundreds_place == pridect_hundreds_place
        hit_cnt += 1
    end
    if result_tens_place == pridect_tens_place
        hit_cnt += 1
    end
    if result_ones_place == pridect_ones_place
        hit_cnt += 1
    end

    blow_cnt = 0
    if result_number_list.include?(pridect_hundreds_place)
        blow_cnt += 1
    end
    if result_number_list.include?(pridect_tens_place)
        blow_cnt += 1
    end
    if result_number_list.include?(pridect_ones_place)
        blow_cnt += 1
    end
    
    puts "#{hit_cnt}ヒット #{blow_cnt}ブロー"

    if result_number_list == pridect_number_list
        $collect += 1
        puts "#{$number_of_answers}回で当たりました"
    end
end



$number_of_answers = 0 #何回答えたか
$collect = 0 #当たったかどうかのフラグ

result_hundreds_place, result_tens_place, result_ones_place = generateNumber

loop do 
    if $collect == 1
        break
    end
    judge(result_hundreds_place, result_tens_place, result_ones_place)
end
