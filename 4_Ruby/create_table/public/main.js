function add_human(human_num){
  let human_all = "";  
  for (i=1; i<=human_num; i++){
    human_text = `<span><img src="human.png" class="human">` + "</span>"
    human_all = human_all + human_text
  }
  human.innerHTML = human_all
}

function add_box(box_num){
  let box_all = "";  
  for (i=1; i<=box_num; i++){
    box_text = `<span class="boxcreate">` + i + "</span>"
    box_all = box_all + box_text
  }
  box.innerHTML = box_all
}

function humanNumber(){
  var human_num = document.getElementById("human_num").value;
  add_human(human_num)
}

function groupNumber(){
  var box_num = document.getElementById("box_num").value;
  add_box(box_num)
}

let human = document.querySelector("#human")
let box = document.querySelector("#box")
