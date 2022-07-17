let input_money = prompt('金額を入力', '2452');
let money = input_money
let display = document.getElementById('display');

let coin_13 = parseInt(money / 13)
money -= 13 * coin_13

let coin_6 = parseInt(money / 6)
money -= 6 * coin_6

let coin_1 = money

total_coin = coin_13 + coin_6 + coin_1

display.innerHTML = `${input_money}円を硬貨で支払う場合、少なくとも${total_coin}枚は必要です。<br><br>硬貨の内訳としましては、<br>13円玉が${coin_13}枚、6円玉が${coin_6}枚、1円玉が${coin_1}枚になります。`
