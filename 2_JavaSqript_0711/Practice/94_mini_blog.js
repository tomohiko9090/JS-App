// 削除
function delete_text(e){
  localStorage.removeItem(e.target.id)
  load()
}

// 読込
function load() {
  let mydata = ""
  let data = ""
  let delete_button = ""
  let id_key = ""

  for(i = 0; i < localStorage.length; i++){
    let key = localStorage.key(i) // 1.i番目のキーを取ってくる
    data = localStorage.getItem(key) // 2.キーを使って値を取ってくる

    //3.削除ボタンの生成 キーが増えたら削除ボタンが生成
    delete_button = `<input type='button' class='delete_button' id='${key}' value='削除'>`
    mydata += delete_button + key + "　" + data + "<br>"
  }
  log.innerHTML = mydata;

  //4.ボタンを押すとデータが削除
  for (i = 0; i < localStorage.length; i++){
    key = localStorage.key(i) // 1.i番目のキーを取ってくる
    id_key = document.getElementById(`${key}`)
    id_key.addEventListener("click", delete_text)
  }
}

// 保存
function save() {
  let textarea = document.querySelector("#textarea").value;
  let dt = new Date();

  let dt_year = String(dt.getFullYear())
  let dt_month = String(dt.getMonth() + 1)
  let dt_date = String(dt.getDate())
  let dt_hours = String(dt.getHours())
  let dt_minutes = String(dt.getMinutes())
  let dt_seconds = String(dt.getSeconds())
  
  if (dt_month.length === 1){
    dt_month = 0 + dt_month
  }
  if (dt_date.length === 1){
    dt_date = 0 + dt_date
  }
  if (dt_hours.length === 1){
    dt_hours = 0 + dt_hours
  }
  if (dt_minutes.length === 1){
    dt_minutes = 0 + dt_minutes
  }
  if (dt_seconds.length === 1){
    dt_seconds = 0 + dt_seconds
  }

  dt_month = "/" + dt_month
  dt_date = "/" + dt_date
  dt_hours = " " + dt_hours
  dt_minutes = ":" + dt_minutes
  dt_seconds = ":" + dt_seconds

  dt_join = dt_year + dt_month + dt_date + dt_hours + dt_minutes + dt_seconds
  localStorage.setItem(dt_join, textarea); 

  load()
}

let send = document.querySelector("#send");

send.addEventListener("click", save);

let log = document.querySelector("#log");
load()


// localStorage.setItem('mydata'); //mydataキーからデータ取得して
// localStorage.setItem('mydata', textarea); //mydataキーでtextareaを登録して
