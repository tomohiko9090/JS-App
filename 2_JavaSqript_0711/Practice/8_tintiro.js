function tintiro(){
    // ランダムでdice生成
    let dice_image1 = dice_list[Math.floor(Math.random() * dice_list.length)];
    let dice_image2 = dice_list[Math.floor(Math.random() * dice_list.length)];
    let dice_image3 = dice_list[Math.floor(Math.random() * dice_list.length)];

    // 画像データのhtml変更
    let path1 = "8_dice_image/" + dice_image1
    let path2 = "8_dice_image/" + dice_image2 
    let path3 = "8_dice_image/" + dice_image3

    dice_first.src = path1;
    dice_second.src = path2;
    dice_third.src = path3;

    // 場合分け
    // if (dice_image1 == "dice_1.png" && dice_image2 == "dice_1.png" && dice_image3 == "dice_1.png"){
    if (dice_image1 === dice_image2 === dice_image3){
        switch (dice_image1){
            case "dice_1.png":
                result.innerHTML = "<h1>役あり 5点</h1>"
               break;
            default:

            
        "役あり(5点)"
    }
    }
    if (){
        
    }
    if (){
        
    }
    

}

let dice_list = ["dice_1.png", "dice_2.png", "dice_3.png", "dice_4.png", "dice_5.png", "dice_6.png"]

let start = document.querySelector("#start");
start.addEventListener("click", tintiro);

let dice_first = document.querySelector("#dice_first")
let dice_second = document.querySelector("#dice_second")
let dice_third = document.querySelector("#dice_third")

let result = document.querySelector("#result")

x