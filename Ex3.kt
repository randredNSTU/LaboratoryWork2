import java.util.Scanner

fun reverseNumber(num: Int): Int {
    var reversed = 0
    var temp = num
    while (temp != 0) {
        reversed = reversed * 10 + temp % 10
        temp /= 10
    }
    var result = 0
    while (reversed != 0) {
        result = result * 10 + reversed % 10
        reversed /= 10
    }
    return result
}

fun reverseAndPrintNumbers(n: Int, numbers: IntArray) {
    for (i in 0 until n) {
        println(reverseNumber(numbers[i]))
    }
}

fun main() {
    val scanner = Scanner(System.`in`)
    print("Введите количество чисел: ")
    val n = scanner.nextInt()
    val numbers = IntArray(n)
    for (i in 0 until n) {
        print("Введите число #${i + 1}: ")
        numbers[i] = scanner.nextInt()
    }
    reverseAndPrintNumbers(n, numbers)
}
