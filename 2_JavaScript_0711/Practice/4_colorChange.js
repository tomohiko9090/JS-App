// 1. クリックすると背景が変更される関数を作る
// 2. クリックしたタイミングで発動するaddEventListenerを記述する
// 3. htmlに反映される

function colorChange(color){
    body.style.backgroundColor = color;
}

let body = document.querySelector("body");

let blue = document.querySelector(".blue");
let green = document.querySelector(".green");
let yellow = document.querySelector(".yellow");
let orange = document.querySelector(".orange");
let red = document.querySelector(".red");
let brown = document.querySelector(".brown");

blue.addEventListener("click", function(){colorChange("#8FB3BB")}); 
green.addEventListener("click", function(){colorChange("#A5CA95")}); 
yellow.addEventListener("click", function(){colorChange("#F5DA84")}); 
orange.addEventListener("click", function(){colorChange("#F0BD87")}); 
red.addEventListener("click", function(){colorChange("#E06766")}); 
brown.addEventListener("click", function(){colorChange("#C97865")}); 

