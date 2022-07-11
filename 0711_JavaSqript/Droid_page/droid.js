// 画像を変更する関数
function chgImg(filename){
    droid.src = filename;
}
// ドロイドくんが話す関数
function speakDroid(msg){
    message.innerHTML = msg;
}

// マウスオーバー中は画像変更
let droid = document.querySelector("#droid");
droid.addEventListener("mouseover", function(){chgImg("robot_image/hello.gif", droid)});
droid.addEventListener("mouseout", function(){chgImg("robot_image/droid.gif", droid)});

let speak = document.querySelector("#speak");
let breaks = document.querySelector("#break");
let stop = document.querySelector("#stop");
let plenty = document.querySelector("#plenty");
let model = document.querySelector("#model");

breaks.addEventListener("click", function(){chgImg("robot_image/break.gif")}); 
stop.addEventListener("click", function(){chgImg("robot_image/stop.gif")}); 
plenty.addEventListener("click", function(){chgImg("robot_image/plenty.gif")}); 
model.addEventListener("click", function(){chgImg("robot_image/model.gif")}); 

speak.addEventListener("click", function(){speakDroid("&#092;うちは人間やない。&#047;<br>&#092;ドロイドやでぇ。&#047;")}); 

