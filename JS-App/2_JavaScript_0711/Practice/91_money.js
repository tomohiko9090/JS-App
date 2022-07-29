let input_money = prompt('金額を入力', '5326');
let money = input_money
let display = document.getElementById('display');

let coin_500 = parseInt(money / 500)
money -= 500 * coin_500

let coin_50 = parseInt(money / 50)
money -= 50 * coin_50

let coin_10 = parseInt(money / 10)
money -= 10 * coin_10

let coin_1 = money

total_coin = coin_500 + coin_50 + coin_10 + coin_1

display.innerHTML = `${input_money}円を硬貨で支払う場合、少なくとも${total_coin}枚は必要です。<br><br>硬貨の内訳としましては、<br>500円玉が${coin_500}枚、50円玉が${coin_50}枚、10円玉が${coin_10}枚、1円玉が${coin_1}枚になります。`
