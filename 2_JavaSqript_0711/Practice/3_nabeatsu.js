// 1. ３で割り切れたらアホになる
// 2. 文字列に3が踏まれている場合はアホになる
// 3. 1桁の場合と2桁の場合に分ける
// 4. 1桁の場合は、onesPlaceから取得。2桁の場合は、10で割って2tensPlace

function nabeastu(num){
  let tensPlace = {1: "じゅう", 2: "にじゅう", 3: "さんじゅう", 4: "よんじゅう", 5: "ごじゅう", 6: "ろくじゅう", 7: "ななじゅう", 8: "はちじゅう", 9: "きゅうじゅう"};
  let onesPlace = {0: "", 1: "いーち", 2: "にぃ", 3: "さん", 4: "よん", 5: "ごぉ", 6: "ろくぅ", 7: "なな", 8: "はちぃ", 9: "きゅう"};

  text = String(num)

  if (text.length === 1) {
    if (num % 3 === 0 || text.match(/3/)){
      document.write(onesPlace[num] + "(☝︎ ՞ਊ ՞)☝︎<br>")
    }
    else{
      document.write(num + "<br>")
    }
  }
  if (text.length === 2){
    if (num % 3 === 0 || text.match(/3/)){

      let num_list = ('00' + num).split(''); //1桁ずつ配列に変換
      let r1 = num_list.pop(); //1桁目
      let r2 = num_list.pop(); //2桁目
      
      document.write(tensPlace[r2] + onesPlace[r1] + "(☝︎ ՞ਊ ՞)☝︎<br>")
    }
    else{
      document.write(num + "<br>")
    }
  }
}

for (i=1; i<100; i++){
  nabeastu(i)
}