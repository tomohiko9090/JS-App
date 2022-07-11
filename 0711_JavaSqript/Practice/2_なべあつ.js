///アホ
const aho_1=["","いちっ！","にっ！","さーんっ！","よんっ！","ごっ！","ろくっ！","ななっ！","はちっ！","きゅうっ！"]
const aho_10=["","じゅう〜！","にじゅ〜！","さん！じゅ！","よんじゅ！","ごじゅ！","ろくじゅ〜っ！","ななじゅ！","はちじゅっ！","きゅうじゅ！"]
const aho_100=["","ひゃく！","にひゃく！","さんびゃ〜く！","よんひゃく！","ごひゃく〜！","ろっぴゃっく！","ななひゃくっ！","はっぴゃ〜く！","ん〜きゅうひゃく！"]

///通常
const normal_1=["","いち","に","さん","よん","ご","ろく","なな","はち","きゅう"]
const normal_10=["","じゅう","にじゅう","さんじゅう","よんじゅう","ごじゅう","ろくじゅう","ななじゅう","はちじゅう","きゅうじゅう"]
const normal_100=["","ひゃく","にひゃく","さんびゃく","よんひゃく","ごひゃく","ろっぴゃく","ななひゃく","はっぴゃく","きゅうひゃく"]
function ahonumber(){
    let normalnum=document.getElementById("nabeatsu").value///ボックスから持ってくる
    if(normalnum>999 || normalnum<1 ){
        alert("値が不正！オモロー！")
        return
    }
    ///0をつけてエラー回避
    let num="00"+normalnum
    num=num.split("")
    let result=""
    
    ///スーパーアホモードか３がつくか３の倍数でアホ。それ以外は通常。
    if(document.getElementById("everyaho").checked || normalnum % 3 == 0 || num.indexOf('3') != -1){
        result=aho_100[parseInt(num[num.length-3])]+aho_10[parseInt(num[num.length-2])]+aho_1[parseInt(num[num.length-1])]
        document.getElementById("result").style.color="#ff0000"///アホは赤い
    }else{
        result=normal_100[parseInt(num[num.length-3])]+normal_10[parseInt(num[num.length-2])]+normal_1[parseInt(num[num.length-1])]
        document.getElementById("result").style.color="#000000"///通常は黒い
    }
    document.getElementById("result").innerHTML = result+"("+normalnum+")"///描画する
}
