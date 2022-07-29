# 配列にする方法
# f = open("test.txt")

# puts "配列の内容"
# ary = f.readlines #配列に格納している
# p ary

# puts "\n ファイルの内容: "
# ary.each{|line|
#   puts line
  
# }

# f.close




#1バイト（1文字）ずつ読み込む方法
# f = open("test.txt")
# while c = f.getc  
#   p c  
# end
# f.close


# テキスト読み込み → 行番号をつける(f.lineno)
# open(ARGV[0]){|f|
#   while line = f.gets
#     printf("%4d: %s", f.lineno, line)
#   end
# }


# 指定した文だけ読み込む（ファイルポインタ）
f = open("test.txt")
p f.read(1)
p f.read(4)
p f.pos #どこまで読み込んだか文字数を取得
f.pos = 20 #読み込み場所を変更できる
p f.read
p f.rewind #ファイルポインタを最初に戻す
p f.read
f.close


