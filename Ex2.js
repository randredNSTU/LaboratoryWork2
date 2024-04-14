// Функция для преобразования римского числа в натуральное число
function romanToInt(romanNumeral) {
    const romanNumerals = { 'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000 };
    let result = 0;
    for (let i = 0; i < romanNumeral.length; i++) {
        const current = romanNumerals[romanNumeral[i]];
        const next = romanNumerals[romanNumeral[i + 1]];
        if (next && current < next) {
            result += next - current;
            i++;
        } else {
            result += current;
        }
    }
    return result;
}

// Получаем ввод от пользователя и выводим результат
const romanNumeral = prompt("Введите римское число:");
console.log("Результат:", romanToInt(romanNumeral));
