// 1. ボタンを押されるまで待機
// 2. ボタン+押されたら四角が増える
// 3. ボタン-押されたら四角が減る
// 4. その際、中の数字が小さいboxから減っていく

function add_box(){
  drow_box += 1;
  let box_all = "";  
  for (i=1; i<=drow_box; i++){
    box_text = "<span>" + i + "</span>"
    box_all = box_text + box_all
  }
  box.innerHTML = box_all
}

function del_add(){
  drow_box -= 1
  let box_all = "";  
    for (i=1; i<=drow_box; i++){
    box_text = "<span>" + i + "</span>"
    box_all = box_text + box_all
  }
  box.innerHTML = box_all
}

let drow_box = 0;

let box = document.querySelector("#box")
let add = document.querySelector("#add")
let del = document.querySelector("#del")

add.addEventListener("click", add_box); 
del.addEventListener("click", del_add); 

