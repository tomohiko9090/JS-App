# ファイルへ書き込む（これはデータベースっぽく扱う方法かも）

f = open("newfile.txt", "a+") 
puts "何か入力してね"
line = gets.chomp!
# f.puts line
size = f.write(line)
puts "#{size}バイト書き込みました。"
f.close