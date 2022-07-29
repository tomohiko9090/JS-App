// 1. クリックする
// 2. number2つと演算の情報がjsに送られる
// 3. jsで演算する
// 4. 結果をhtmlに返す

function run(){
  let a = document.getElementById("number1").value;
  let b = document.getElementById("number2").value;
  let c = 0;
  let cal = document.getElementById("operator").value;
  a = Number(a) 
  b = Number(b) 
  cal = String(cal)

  if (cal === "add"){
    c = a + b
  }

  if (cal === "sub"){
    c = a - b
  }

  if (cal === "mul"){
    c = a * b
  }

  if (cal === "div"){
    c = a / b
  }

  if (cal === "mod"){
    c = a % b
  }
  let msg = document.querySelector("#result")
  msg.innerHTML = c;
}