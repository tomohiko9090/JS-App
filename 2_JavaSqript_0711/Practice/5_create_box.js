// 1. ボタンを押されるまで待機
// 2. ボタン押されたら四角が表示

function add_box(){
  box_count += 1;
  let box_all = "";  
  for (i=1; i<=box_count; i++){
    box_all = box_all + box_text
  }
  box.innerHTML = box_all
}

function del_add(){
  box_count -= 1
}

let box_count = 0;
box_text = "<span>aaa</span>"
let box = document.querySelector("#box")
// box.outerHTML = box_text

let add = document.querySelector("#add")
let del = document.querySelector("#del")

add.addEventListener("click", function(){add_box()}); 
del.addEventListener("click", function(){del_add()}); 