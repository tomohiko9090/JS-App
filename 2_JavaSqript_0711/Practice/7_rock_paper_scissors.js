// 1. グー、チョキ、パーが押されるまで待機
// 2. じゃんけんロボがで手を出す
// 3. 勝ちの場合、負けの場合、あいこの場合で場合分け

function janken(choice){
  // サーバー側の手
  let hand_list = ['✊', '✌️', '🖐'];
  let hand_generate_num = Math.floor(Math.random()*hand_list.length);
  let server_hand = hand_list[hand_generate_num];
  let server = document.querySelector("#server");
  server.innerHTML = "<font size='7'>" + server_hand + "</font>"
   
  // クライアント側の手
  let client = document.querySelector("#client")
  let result = document.querySelector("#result")

  // 勝ち負け判定
  if (choice === "rock"){
    let client_hand = hand_list[0]
    client.innerHTML = "<font size='7'>" + client_hand + "</font>"

    if(server_hand === '✊'){
      result.innerHTML = "<h3>あいこぉ！！<h3>"
    }
    if(server_hand === '✌️'){
      result.innerHTML = "<h3>君の勝ちだ！<h3>"
    }
    if(server_hand === '🖐'){
      result.innerHTML= "<h3>君の負けだよ。<h3>"
    }
  } 

  if (choice === "scissors"){
    let client_hand = hand_list[1]
    client.innerHTML = "<font size='7'>" + client_hand + "</font>"
    if(server_hand === '✊'){
      result.innerHTML = "<h3>君の負けだよ。"
    }
    if(server_hand === '✌️'){
      result.innerHTML = "<h3>あいこぉ！！<h3>"
    }
    if(server_hand === '🖐'){
      result.innerHTML = "<h3>君の勝ちだ！<h3>"
    }
  }

  if(choice === "paper"){
    let client_hand = hand_list[2]
    client.innerHTML = "<font size='7'>" + client_hand + "</font>"
    if(server_hand === '✊'){
      result.innerHTML = "<h3>君の勝ちだ！<h3>"
    }
    if(server_hand === '✌️'){
      result.innerHTML = "<h3>君の負けだよ。<h3>"
    }
    if(server_hand === '🖐'){
      result.innerHTML = "<h3>あいこぉ！！<h3>"
    }
  }
}
 



