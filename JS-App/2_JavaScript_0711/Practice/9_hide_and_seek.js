// シャッフルする関数
const shuffleArray = (array) => {
  const cloneArray = [...array]

  for (let i = cloneArray.length - 1; i >= 0; i--) {
    let rand = Math.floor(Math.random() * (i + 1))

    let tmpStorage = cloneArray[i] // 配列の要素の順番を入れ替える
    cloneArray[i] = cloneArray[rand]
    cloneArray[rand] = tmpStorage
  }
  return cloneArray
}

// テキストを並べる関数
function generateText(array_text_list, range){
  let text = ""
  for (let i=0; i<range; i++){
    for (j=0; j<range; j++){
      text += array_text_list.pop() + " "
    }
    text += "<br>"
  }
  display.innerHTML = text
} 

// 文字のリストを作成する関数
function generateList(target, dummy, level){
  let range = lengh_dict[level]

  let text_list = [target]

  for(i=1; i<range**2; i++){
    text_list.push(dummy)
  }

  let array_text_list = shuffleArray(text_list)
  return {
    array_text_list, 
    range
  }
} 

// クリックで動く関数
function hideAndSeek(){
  let target = document.querySelector("#target").value;
  let dummy = document.querySelector("#dummy").value;
  let level = document.querySelector("#level").value;
  
  let {array_text_list, range} = generateList(target, dummy, level)
  generateText(array_text_list, range)
}

let lengh_dict = {"gekiama": 10, "amakuchi": 20, "karakuchi": 30, "gekikara": 40}

let find = document.querySelector("#find");
let display = document.querySelector("#display");

find.addEventListener("click", hideAndSeek);
