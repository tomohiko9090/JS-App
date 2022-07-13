// 1. ボタンを押されるまで待機
// 2. ボタン押されたら四角が表示

function add_box(){
  box_count += 1;
  let box_all = "";  
  for (i=0; i<=box_count; i++){
    box_all = box_all + box_text
  }
  document.write(box_text)
  box.outerHTML = box_all;
}

function del_add(){
  box_count -= 1
}
let box_count = 0;
box_text = "<span></span>"

let add = document.querySelector("#add")
let del = document.querySelector("#del")
// let box_drow = document.querySelector("#box")

add.addEventListener("click", add_box); 
del.addEventListener("click", del_add); 

