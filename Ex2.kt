import java.util.Scanner

// Функция для преобразования римского числа в натуральное число
fun romanToInt(romanNumeral: String): Int {
    // Создаем хеш-мапу для соответствия римских цифр и их значений
    val romanNumerals = hashMapOf(
        'I' to 1,
        'V' to 5,
        'X' to 10,
        'L' to 50,
        'C' to 100,
        'D' to 500,
        'M' to 1000
    )

    var result = 0
    var prev = 0
    for (char in romanNumeral.reversed()) {
        val current = romanNumerals[char] ?: error("Неизвестный символ: $char")
        if (current < prev) {
            result -= current
        } else {
            result += current
        }
        prev = current
    }

    return result
}

fun main() {
    // Получаем ввод от пользователя
    val scanner = Scanner(System.`in`)
    print("Введите римское число: ")
    val romanNumeral = scanner.nextLine().toUpperCase()

    // Преобразуем римское число в натуральное и выводим результат
    val result = romanToInt(romanNumeral)
    println("Результат: $result")
}
