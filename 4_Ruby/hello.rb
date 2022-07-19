puts "テスト1"
puts "172cm" #コメントはCっぽい
puts "64kg" 
puts "BMIは・・・"

puts "\nテスト2"
puts 64 / 1.72*2


puts "\nテスト3"
# today = 20220715
# birthday = gets.to_i #getsでターミナル受付できる
# age = (today - birthday) / 10000 #これで誕生日が計算できるという真実
# name = gets

puts "\nテスト4"
user_name = "葛葉"  
user_name = "朋彦"
USER_NAME = "葛葉" #定数
# USER_NAME = "朋彦" #大文字はなんと再代入ができない！

puts "\nテスト5"
school = %w(1_小学校 2_中学校 3_高校 4_大学) #ダブルクオートとかいらんくなる書き方がある！
# puts school[0, 2] #カンマの後ろは要素数でスライスできる
# puts school[0]
# puts school[0, 1]
puts school[1..3] #3番目の要素も表示する
puts school[1...3] #3番目の要素は表示しない→違う挙動！

puts "\nテスト6"
puts school << "5_大学院"
puts school[0, 2] = %w(C++ C#) #こんな入れ方もあるよ
puts school

puts "\nテスト7"
schools = %w(1_小学校 2_中学校 3_高校 4_大学 5_大学院 6_会社)
count = 0
schools.each do |school|
    count += 1
    if 4 < count then
      break
    end
    puts "#{school}におりました。" 
end

puts "\nテスト7"
lang = %w(Ruby Python Perl Java)
puts "好きな言語は？"
lang.each_with_index do |name, index| #二つ目にindexが入ってくる
    puts "#{index+1}位：#{name}"
end

puts "\nテスト8"
lang = %w(1_福井 2_広島 3_京都 4_東京 5_シリコンバレー)
lang.delete_at(4) #4番要素削除
p lang
p lang.slice(1) #スライスは破壊的メソッドではないらしい
p lang
p lang.clear

puts "\nテスト9"
pref = %w(1_福井 2_広島 3_京都 4_東京 5_シリコンバレー)
p pref.reverse #降順は
int = [24, 54, 103, 7, 13, 48]
p int.sort
str = ["24", "54", "103", "7", "13", "48"]
p str.sort
p str.sort {|x, y| x.to_i <=> y.to_i} #str型は普通無理だけど、これなら変換して並び替えが可能！

puts "\nテスト10"
pref = %w(1_福井 2_広島 3_京都 4_東京 5_シリコンバレー)
p pref.reverse #非破壊
p pref
p pref.reverse! #破壊的メソッド
p pref

puts "\nテスト11"
pref = %w(1_福井 2_広島 3_京都 4_東京 5_シリコンバレー)
p pref.shuffle!
p pref

puts "\nテスト11"
num_list = [1, 2, 3, 4, 5, 6, 7, 8, 9]
p num_list.collect{|i| i*10 }
p num_list.map{|i| i*10 }

puts "\nテスト12"
# 連想配列（辞書型）とは言わず、ハッシュという
fruits = {"apple" => "りんご", "orange" => "みかん", "lemon" => "レモン", "grape" => "ぶどう" } 
p fruits["apple"]

puts "\nテスト13"
fruits = {"apple": "りんご", "orange": "みかん", "lemon": "レモン", "grape": "ぶどう" } #整数の番号で管理してるから動作が早いらしい
p fruits[:apple] #「:」のシンボルを使わないとnilになる

puts "\nテスト14"
puts fruits.has_key?:lemon #このキーってある？
puts fruits.has_value?:みかん #この値ある？

puts "\nテスト15"
fruits = {"apple": "りんご", "orange": "みかん", "lemon": "レモン", "grape": "ぶどう" }

# ハッシュセットで回す
fruits.each do |key, value|
    puts "#{value}は英語で#{key}"
end

# keyだけで回す
fruits.each_key do |key|
    puts "キーは#{key}です"
end

# valueだけで回す
fruits.each_value do |value|
    puts "値は#{value}です"
end

puts "\nテスト17"
h1 = {a: 10, b: 20}
h2 = {c: 50, d: 100}
p h1.merge(h2)
p h2.merge(h1)

puts "\nテスト17"
a = [1, 2, 3, 4, 5]
b = a
a[2] = 100
p a 
p b #aを変えただけなのにbも変わっている！
puts a.object_id
puts b.object_id

puts "\nテスト18"
# print "整数を入力"
# num = gets.to_i
# if num < 0
#     puts "負の数です"
# elsif num > 0
#     puts "正の数です"
# else 
#     puts "ゼロです"
# end

puts "\nテスト19"
# print "パスワードを決めてください"
# password = gets.chomp #chomp入れないとエンターボタンの情報が1文字カウントになってしまう。
# case
# when password.size < 6
#     puts "パスワードは６文字以上にしてください。"
# when password.size > 12
#     puts "パスワードは12文字以内にしてください。"
# else
#     puts "パスワードを保存しました。"
# end

puts "\nテスト20"
# こんなcaseの使い方もある！
# print "月を入力: "
# month = gets.to_i
# print "#{month}月は"
# case month
# when 3, 4, 5
#     puts "春です"
# when 6, 7, 8
#     puts "夏です"
# when 9, 10, 11
#     puts "秋です"
# when 12, 1, 2
#     puts "冬です"
# else
#     puts "無効な値です"
# end

puts "\nテスト20"
# # 後置if
# print "整数を入力"
# num = gets.to_i
# puts "偶数です" if num % 2 == 0
# puts "奇数です" if num % 2 == 1

puts "\nテスト21"
# なんかあればfalse、nil意外は全部Trueだぜ！
values = [
    0, 
    0.00, 
    "",
    [],
    {},
    true,
    false,
    nil,
]

values.each do |value|
    if value
        puts "真"
    else
        puts "偽"
    end
end

puts "\nテスト21"
sum = 0
for i in (1..10)
    sum += i 
end
puts sum

puts "\nテスト22"
# 単にその回数だけ実行したい時
5.times do
    puts "Hello!"
end

puts "\nテスト23"
5.times do |i|
    puts i
end

puts "\nテスト24"
loop do
    puts "BABEL"
    break
end

puts "\nテスト25"
5.times do |i|
    if i == 3
        break
    end
    puts i
end

puts "\nテスト26"
5.times do |i|
    if i == 3
        next
    end
    puts i
end

puts "\nテスト27"
# 回す回数とiの数があって、3になるとき回す回数はストップするけど、iは進むからifがない。
i = 0
5.times do
    i += 1
    if i == 3
        redo
    end
    puts i
end

puts "\nテスト28"
3.times{|i| puts i}


# nilは、nullと一緒!
# returnがnilになる問題は結構むずい！
puts "\nテスト29"
def aaa()
    # puts "bbb"
    return "bbb"
end

aaa()
c = aaa()
puts c


puts "\nテスト30"
class Hello
    def hello
        puts "Hello Ruby!"
    end
    def bye
        puts "Good-bye."
    end
end

g = Hello.new #Helloクラスをgで呼べるインスタンスを生成しますよ〜
g.hello
g.bye

puts "\nテスト31"
class Hello
    def initialize(name)
        @name = name
    end
    def hello
        puts "Hello #{@name}!"
    end
    def bye
        puts "Good-bye #{@name}."
    end
end

fred = Hello.new("Fred")
fred.hello
fred.bye

puts "\nテスト32"
class Cat
    def initialize(name, hinsyu, nakigoe="にゃー")
        @name = name
        @hinsyu = hinsyu
        @nakigoe = nakigoe
    end
    def naku
        puts @nakigoe
    end
    def introduce
        puts "私、#{@name}と申します。#{@hinsyu}"
    end

    # クラスメソッド
    def Cat.shukai 
        puts "しゃー！！！！"
        puts "みゃー！！！！"
    end

end

cat1 = Cat.new("タマ", "雑種")
cat1.naku

cat2 = Cat.new("タマ", "雑種", "みゃーお")
cat2.introduce

puts "\nテスト33"
Cat.shukai #これでも呼べる

class Product
    Tax_rate = 0.08
    @@tax_rate = 0.1

    def initialize(name, price)
        @name = name
        @price = price
    end
    def display
        puts "#{@name}の税込み価格は#{self.tax}円です"
    end
    def tax
        @price += (@price * Tax_rate).to_i
    end
    def Product.show_tax_rate
        "消費税率は#{(@@tax_rate * 100).to_i}%です。#{@name}" #returnの省略
    end
end

apple = Product.new("りんご", 100)
apple.display
p apple.tax

puts Product.show_tax_rate
