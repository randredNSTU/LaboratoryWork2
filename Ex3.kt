import kotlin.math.floor

// Функция для переворачивания числа
fun reverseNumber(num: Int): Int {
    var result = 0
    var number = num
    while (number != 0) {
        val digit = number % 10
        if (result != 0 || digit != 0) {
            result = result * 10 + digit
        }
        number = number / 10
    }
    return result
}

// Функция для переворачивания каждого числа в списке и вывода без ведущих нулей
fun reverseAndPrintNumbers(numbers: List<Int>) {
    numbers.forEach {
        println(reverseNumber(it))
    }
}

fun main() {
    println("Введите количество чисел:")
    val n = readLine()!!.toInt() // Запрос количества чисел
    val numbers = mutableListOf<Int>()
    for (i in 1..n) {
        println("Введите число #$i:")
        numbers.add(readLine()!!.toInt()) // Ввод каждого числа
    }
    reverseAndPrintNumbers(numbers) // Переворачиваем и выводим числа без ведущих нулей
}
