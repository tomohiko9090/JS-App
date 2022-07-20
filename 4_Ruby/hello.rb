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
    Tax_rate = 0.08 #これでもできるくね？
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
        "消費税率は#{(@@tax_rate * 100).to_i}%です。" #returnの省略
    end
end

apple = Product.new("りんご", 100)
apple.display
p apple.tax

puts Product.show_tax_rate

puts "\nテスト34"
module Admin
    class User
        def login()
            puts "管理者としてログイン"
        end
    end
end

class User
    def login()
        puts "一般ユーザーとしてログイン"
    end
end

admin = Admin::User.new #モジュールを使う時の記法
admin.login()
user = User.new
user.login()


puts "\nテスト35"
module Camera
    def picture
        puts "写真を撮影"
    end
    def movie
        puts "動画を撮影"
    end
end

module Internet
    def connect
        puts "インターネットに接続"
    end
    def browse
        puts "インターネットで調べたもの"
    end
    def purchase
        puts "インターネットでお買い得"
    end
end

module Office
    def word
        puts "ワープロで文書を書く"
    end
    
    def excel
        puts "表計算でデータ分析"
    end
end

class Computer
    include Camera
    include Internet
    include Office
    def play
        puts "ソリティアで遊ぶ"
    end
end

pc = Computer.new
pc.play
pc.picture
pc.connect
pc.purchase
pc.word


puts "\nテスト36"
#  アクセスメソッドは、参照と代入がある
# 参照のやり方はこちら
class Human
    def initialize(name, age)
        @name = name
        @age = age
        puts "こんにちは、#{name}です。"
    end
    def name
        return @name
    end
    def age
        if @age < 18
            puts "未成年です！"
        end
        return @age
    end
end

hanako = Human.new("佐藤花子", 10)
puts hanako.age


puts "\nテスト37"
# カプセル化によってインスタンス変数には代入できないが、下のようにメソッドが定義されれば
class Human
    def initialize(name, age)
        @name = name
        @age = age
        puts "こんにちは、#{name}です。"
    end
    #　インスタンス変数の参照
    def name
        return @name
    end
    def age
        return @age
    end

    # インスタンス変数の代入
    def name=(name) #これがないとhanako.nameでアクセスできない！
        @name = name
        return @name
    end
    def age=(age) 
        @age = age
        return @name
    end
end

# hanako = Human.new("佐藤花子", 10)
# hanako.name=("佐藤はなこ") #「name=」というメソッド
# puts hanako.name #あたかもインスタンス変数にアクセスしたかのようにふるまってくれる！
# puts hanako.age


puts "\nテスト38"
class Human
    attr_accessor :name, :age
    def initialize(name, age)
        @name = name
        @age = age
        puts  "こんにちは、#{@name}です。"
    end
end

hanako = Human.new("佐藤花子", 10)
hanako.name=("山田花子")
puts hanako.name
puts hanako.age


puts "\nテスト39"
class AccessTest
    # private :private_method #この書き方でも良い
    def public_method
        puts "パブリックメソッド"
    end
    private
    def private_method
        puts "プライベートメソッド"
    end
end

at = AccessTest.new
at.public_method
# at.private_method #これはできない！


puts "\nテスト40"
# スーパークラス
class Animal
    def eat
        puts "えさを食べます。"
    end
    def sleep
        puts "眠ります。"
    end
end

# サブクラス
class Dog < Animal 
    def bow 
        puts "わんわん！"
    end
end

class Bird < Animal
    def sing
        puts "ぴぃぴぃ"
    end
end

pochi = Dog.new
pochi.eat
pochi.bow 
pochi.sleep

pchan = Bird.new
pchan.eat
pchan.sing
pchan.sleep

p Dog.ancestors


puts "\nテスト40"
# 同名のメソッドを呼び出せる
class A
    def x(str)
        puts str * 3
    end
end

class B < A 
    def x(str)
        super(str)
        puts "END"
    end
end


puts "\nテスト41"
a = 234
printf("数字は%sです。2進数にすると、%bです", a, a)


puts "\nテスト42"
def callback
    puts "開始します"
    yield
    yield
    yield
    puts "終了します"
end

callback {puts "いろは"}
callback {puts "にほへと"}

puts "\nテスト43"
# 組み込み関数を変化させている結構特殊
class String
    def vertical
        for i in 0...self.length
            yield self[i] + "\n" #1文字ごとに改行
        end
    end
end

"Ruby".vertical do |c|
    printf c
end

str = String.new("いえい")
str.vertical do |c|
    printf c
end

puts "\nテスト43"
def println(*str) #何個引数あってもいいよー 
    puts "#{str.size}個の引数"
    puts str
end

println "Hello World" 
puts
println "abc", 123 #puts["abc", 123]になるのと同じ

class Train
    def gse(*numbers)
      puts "今日の特急は#{numbers.join}です。"
    end
  end

train = Train.new
train.gse("1号","2号","3号","4号")


puts "\nテスト44"
# なんとこれでいける。。。きもい
def symtest(q,w,a)
    puts q
    puts w
    a.each{|b| p b}
end
   
symtest 3, "ありがとう", Ruby: 1, Python: 2, Perl: 3


puts "\nテスト45"
var = true
var ||= 1
var &&= 1
var = false
var &&= 1
var ||= 1
var = nil
var &&= 1
var ||= 1

puts "\nテスト46"
#関係ないですが、varの次の行で改行しても大丈夫らいいですね
# print "input [1-3]: "
# a = gets.to_i
# var = 
# if a == 1 then
#     "Ruby"
# elsif a == 2 then
#     "Python"
# else
#     "Perl"
# end

# puts "var : #{var}"

puts "\nテスト47"
f = 1
h = f 
puts f.object_id
puts h.object_id


# Rubyには全てのオブジェクトにidが割り振られている

puts "\nテスト48"
# いろいろ
puts 100_000_000

include Math
puts sqrt(9)
puts 10.3.integer?

puts "\nテスト49"
# ビット演算
puts a = 0b11001100
puts ~a
puts a | 0b01001100 
puts a << 0b01001100

puts a = 0b11001100
printf("%b", a) 
puts a.to_s(2) 



puts "\nテスト50"
puts %q{てんきゅー}
p %w="Python hoge hoge"= #どんな記号でも%記号ならくくれるらしい笑
 
puts "\nテスト51"
#ヒアドキュメント
text = <<'establish'
"あなたの心にずっきゅんばっきゅんどっきゅんこんこんちゅちゅちゅちゅちゅかすこんねぅですestablish"
establish
"いえいいえいぱんぱんぱんいえいいえいぱんぱんぱんどうもデカキンです"

p text


puts "\nテスト52"
str = "hello, ああああ" 
p str.split(/,/)
puts
puts str.concat("Ruby")
puts str.include?("e") #eって文字入ってる？
puts str.index("o") #何文字目？
puts str.rindex("o")#右から何文字目？

puts "\nテスト53"
p "Ruby".chomp
p "Ruby".chomp! #破壊的メソッドも可能

puts "\nテスト54"
# 正規表現
# パターン1：/文字列パターン/を使うと正規表現になるよ
# パターン2：Regexp.new("文字列パターン")
# パターン3： %r(文字列パターン)
puts /cde/ =~ 'abcdefg' #数字が返ってくる　if文ならtureになるよ
puts /cDe/i =~ 'abcdefg'

puts "\nテスト54"
str = "Ruby is adynamic, open sorce prpframming langage"
if str.match(/Ruby/)
    puts 'マッチしたよぉ'
else
    puts 'マッチしてないよん'
end

puts "\nテスト54"
# まっちした値が入ってる
/(^.).*(R...)/ =~ 'Programming Lnaguage Ruby' #()で括れば取り出せるよー。^は文頭。.1文字ならなんでもいいよ〜
puts $1
puts $2

/(c.e)/ =~ 'abcdefg'
puts $` #マッチした部分より前
puts $& #マッチした部分
puts $' #マッチした部分より後ろ


puts "\nテスト55"
# 文字列パターンの置換
str = 'Perl PHP Python Perl PHP Python'
puts str.sub(/Python/, 'おっぱっぴー') #最初にでてきたPythonのみ置換
puts str.gsub(/Python/, 'おっぱっぴー') #Python全てを置換


puts "\nテスト55"
# メールアドレスがあってるかチェックする


puts "\nテスト56"
*ppap = "さくらさけ君の胸に〜♪", "ぴえん", "ぱおん" #可変引数はつまりハッシュ
p ppap