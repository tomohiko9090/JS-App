let h1 = document.querySelector("h1");
h1.style.color = "orange";

let summary = document.querySelector("#summary");
summary.innerHTML = "僕が過去に過ごした場所";
let text = document.querySelector(".text");
text.style.fontSize = "20px"

let li = document.querySelectorAll("ul li");
for (let i = 0; i < li.length; i++){
    li[i].style.fontStyle = "italic";
}

let fukui = document.querySelector("#list1");
fukui.style.color = "green";

let hiroshima = document.querySelector("#list2");
hiroshima.style.color = "red";

let kyoto = document.querySelector("#list3");
kyoto.style.color = "blue";

let tokyo = document.querySelector("#list4");
tokyo.style.color = "grey";

function showMsg(){
    let msg = document.querySelector("#msg")
    msg.innerHTML = "何も起きなかったようだ。";
}
let btn = document.querySelector("button");
btn.addEventListener("click", showMsg); 
// btn.addEventListener("click", showMsg()); これだと最初からクリックした状態になってしまう。

function chgColor(color){
    str.style.backgroundColor = color;
}
let str = document.querySelector("#str");
str.addEventListener("mouseover", function(){chgColor("#ffc0cb");});
str.addEventListener("mouseout", function(){chgColor("#ffffff");});