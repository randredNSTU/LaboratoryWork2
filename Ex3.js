// Функция для переворачивания числа
function reverseNumber(num) {
    let result = 0;
    while (num !== 0) {
        const digit = num % 10;
        if (result !== 0 || digit !== 0) {
            result = result * 10 + digit;
        }
        num = Math.floor(num / 10);
    }
    return result;
}

// Функция для переворачивания каждого числа в массиве и вывода без ведущих нулей
function reverseAndPrintNumbers(numbers) {
    numbers.forEach(num => {
        console.log(reverseNumber(num));
    });
}

console.log("Введите количество чисел:");
const n = parseInt(prompt()); // Запрос количества чисел
const numbers = [];
for (let i = 0; i < n; i++) {
    console.log(`Введите число #${i + 1}:`);
    numbers.push(parseInt(prompt())); // Ввод каждого числа
}
reverseAndPrintNumbers(numbers); // Переворачиваем и выводим числа без ведущих нулей
