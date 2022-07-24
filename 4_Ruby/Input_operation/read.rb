open("test.txt"){ |f|
  while line = f.gets #データがある間ずっと
    line.chomp!
    puts line
    # p f.eof?  #ファイルの末尾に到達するとtrueを返す
  end
}