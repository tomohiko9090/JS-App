begin
    raise "例外が発生しました！" #意図的に発生させたい時
rescue => ex
    puts "クラス名 :#{ex.class.name}"
    puts "メッセージ :#{ex.message}"
end