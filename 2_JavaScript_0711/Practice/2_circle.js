// 1. スライダーバーの半径データを取得
// 2. "change"のタイミングでサイズだけを取り出す
// 3. CSSの要素にサイズを代入していく
// 4. テキスト情報も同様

function circle(s){
    // 3
    cir.style.width = s + "px";
    cir.style.height = s + "px";
    
    //4
    let text = document.querySelector("#text");
    text.innerHTML = "直径" + s + "px";
    text.style.lineHeight = s + "px";
  }
  
  let size = document.querySelector("#size"); //1
  let cir = document.querySelector(".circle");
  size.addEventListener('change', function(){circle(size.value)}); //2