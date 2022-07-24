# 目的

begin
    print "ファイル名を入力: "
    filename = gets.chomp
    f = File.open(filename)
    print f.read
    f.close
    puts
rescue => ex
    p ex
    puts "エラーです。ファイル名を確認してください。"
    retry
ensure
    puts "プログラムを終了します。"
end

