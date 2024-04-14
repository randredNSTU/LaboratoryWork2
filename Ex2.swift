import Foundation

// Функция для преобразования римского числа в натуральное число
func romanToInt(_ romanNumeral: String) -> Int {
    // Создаем словарь для соответствия римских цифр и их значений
    let romanNumerals: [Character: Int] = [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    ]
    
    var result = 0
    var prev = 0
    for char in romanNumeral.reversed() {
        guard let current = romanNumerals[char] else { continue }
        if current < prev {
            result -= current
        } else {
            result += current
        }
        prev = current
    }
    
    return result
}

// Получаем ввод от пользователя и выводим результат
print("Введите римское число:", terminator: " ")
if let input = readLine(), !input.isEmpty {
    let result = romanToInt(input)
    print("Результат:", result)
} else {
    print("Ошибка: Введите корректное римское число.")
}
