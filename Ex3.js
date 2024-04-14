function reverseNumber(num) {
    let reversed = 0;
    while (num !== 0) {
        reversed = reversed * 10 + num % 10;
        num = Math.floor(num / 10);
    }
    let result = '';
    while (reversed !== 0) {
        result = (reversed % 10) + result;
        reversed = Math.floor(reversed / 10);
    }
    return parseInt(result);
}

function reverseAndPrintNumbers(n, numbers) {
    for (let i = 0; i < n; i++) {
        console.log(reverseNumber(numbers[i]));
    }
}

let n = parseInt(prompt("Введите количество чисел:"));
let numbers = [];
for (let i = 0; i < n; i++) {
    numbers.push(parseInt(prompt("Введите число:")));
}

reverseAndPrintNumbers(n, numbers);
