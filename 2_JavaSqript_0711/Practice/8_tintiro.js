function tintiro(){
    // ランダムでdice生成
    let dice1 = dice_list[Math.floor(Math.random() * dice_list.length)];
    let dice2 = dice_list[Math.floor(Math.random() * dice_list.length)];
    let dice3 = dice_list[Math.floor(Math.random() * dice_list.length)];

    let dice_image1 = dice_dict[dice1]
    let dice_image2 = dice_dict[dice2]
    let dice_image3 = dice_dict[dice3]

    // 画像データのhtml変更
    let path1 = "8_dice_image/" + dice_image1
    let path2 = "8_dice_image/" + dice_image2 
    let path3 = "8_dice_image/" + dice_image3

    dice_first.src = path1;
    dice_second.src = path2;
    dice_third.src = path3;

    // ピンゾロ、ゾロ目
    if (dice1===dice2 &&  dice1===dice3 && dice2===dice3){

        switch (dice1){
            case 1:
                result.innerHTML = "<h1>アラシ ピンゾロ 5点</h1>"
                text_color.style.color = "blue"
                return
            default:
                result.innerHTML = "<h1>アラシ ゾロ目 3点</h1>"
                text_color.style.color = "black"
                return
            }
    }

    dice_multiply = dice1 * dice2 * dice3
    // シゴロ
    if (dice_multiply === 120){
        result.innerHTML = "シゴロ 2点"
        text_color.style.color = "black"
        return
    }

    // ヒフミ
    if (dice_multiply === 6){
        //6がある場合のみ除外
        if (dice1 !== 6 && dice2 !== 6 && dice3 !== 6){ 
            result.innerHTML = "ヒフミ -2点"
            text_color.style.color = "red"
            return
        } 
    }

    // 通常の目
    if (dice1 === dice2 === dice3 === 2){
        if (dice1 === dice2){
            deme === dice3
        }
        if (dice1 === dice3){
            deme = dice2
        }
        if (dice2 === dice3){
            deme = dice1
        }
        switch (deme){
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                result.innerHTML = `通常の目 ${deme}の目 1点`
                text_color.style.color = "black"
                return
        }
    }
    result.innerHTML = "役なし　-1点"
    text_color.style.color = "red"
}

let dice_dict = {1: "dice_1.png", 2: "dice_2.png", 3: "dice_3.png", 4: "dice_4.png", 5: "dice_5.png", 6: "dice_6.png"}
let dice_list = [1, 2, 3, 4, 5, 6]

let start = document.querySelector("#start");
start.addEventListener("click", tintiro);

let dice_first = document.querySelector("#dice_first")
let dice_second = document.querySelector("#dice_second")
let dice_third = document.querySelector("#dice_third")

let result = document.querySelector("#result")
let text_color = document.querySelector(".color")
