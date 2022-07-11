// 1. ３で割り切れたらアホになる
// 2. 文字列に3が踏まれている場合はアホになる

function nabeastu(num){
    text = String(num)
    if (num % 3 === 0 || text.match(/3/)){
      document.write(num + "(☝︎ ՞ਊ ՞)☝︎<br>")
    }
    else{
      document.write(num + "<br>")
    }
  }
  for (i=1; i<100; i++){
    nabeastu(i)
  }