// Функция для переворачивания числа
func reverseNumber(_ num: Int) -> Int {
    var result = 0
    var number = num
    while number != 0 {
        let digit = number % 10
        if result != 0 || digit != 0 {
            result = result * 10 + digit
        }
        number /= 10
    }
    return result
}

// Функция для переворачивания каждого числа в массиве и вывода без ведущих нулей
func reverseAndPrintNumbers(_ numbers: [Int]) {
    for num in numbers {
        print("\(reverseNumber(num))\n")
    }
}

print("Введите количество чисел:")
if let n = Int(readLine() ?? "") {
    var numbers = [Int]()
    for i in 1...n {
        print("Введите число #\(i):")
        if let input = readLine(), let number = Int(input) {
            numbers.append(number)
        }
    }
    reverseAndPrintNumbers(numbers) // Переворачиваем и выводим числа без ведущих нулей
}
