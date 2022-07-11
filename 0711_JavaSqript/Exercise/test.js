let a = "どったんばったん大騒ぎ"; 
document.write("<br>1. " + a);

a = '姿形十人十色';
document.write("<br>2. " + a + "\nだから惹かれ合うの");

let int1 = 10;
let int2 = 3;
let str = "左で計算します→"
document.write("<br>3. " + str + int1 * int2);

let b = 1;
let c = 3;
document.write("<br>4. " + b/c);
b++
document.write("<br>5. " + b);
b++
document.write(b);
b++
document.write(b);

// let age = prompt("君はいくつ？😗");
let age = 25;
document.write("<br>6. " + age + "歳は、");
if (age >= 20){
    document.write("成人です。お酒を飲めます")
}
else if (age >= 18){
    document.write("成人ですが、お酒が飲めません")
}
else {
    document.write("未成年です。")
}

// let month = prompt("");
let month = 13;
document.write("<br>7. " + month + "月→");
if (1 <= month && month <= 12){
    document.write("存在します。")
}
else{
    document.write("そんな月は存在しません。")
}
document.write("<br>8. ");

let i = 1;
while (i <= 5){
    document.write("<br>" + i + "回目");
    i++;
}

document.write("<br>9. ");
for (let i = 1; i <= 5; i++){
    document.write("<br>" + i + "回目")
}

document.write("<br>11. ");
function loop(max){
    for (let i = 1;i<= max; i++){
        document.write(i + "回目<br>");
        }
    }
loop(2);

document.write("<br>12. FizzBuzzゲーム");
// 1. 関数を受け取ってそれが3で割り切れる場合はFizz。5で割り切れる場合は、Buzzを出力、両方の時FizzBuzz、それ以外の場合数字を出力する関数を作る
// 2. forで100回ループ
function fizzbuzz(a){
    if (a%3===0 && a%5===0){
        document.write("FizzBuzz")
    }
    else if (a % 3 === 0){
        document.write("Fizz")
    }
    else if (a % 5 === 0){
        document.write("Buzz")
    }
    else {
        document.write(a)
    }
}
for (let i=1; i<=20; i++){
    document.write("<br>");
    fizzbuzz(i)
}

// function fizzbuzz(a){
//     if (a%3===0){
//         document.write("FizzBuzz")
//     }
//     else if (a % 3 === 0){
//         document.write("Fizz")
//     }
//     else if (a % 5 === 0){
//         document.write("Buzz")
//     }
//     else {
//         document.write(a)
//     }
// }
// for (let i=1; i<=100; i++){
//     document.write("<br>");
//     fizzbuzz(i)
// }

document.write("<br>13. ");
let numbers = ["a", "b", "c", "d", "e"];
document.write(numbers.length + "個の配列を並べます。<br>");

for (let i = 0; i < numbers.length; i++){
    document.write(numbers[i] + "<br>");
}

document.write("<br>14. <br>");
numbers.push("g")
document.write(numbers);
numbers[5] =  "f";
document.write("<br>" + numbers);
numbers.pop()
document.write("<br>" + numbers);

