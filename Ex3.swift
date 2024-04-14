func reverseNumber(_ num: Int) -> Int {
    var reversed = 0
    var temp = num
    while temp != 0 {
        reversed = reversed * 10 + temp % 10
        temp /= 10
    }
    var result = 0
    while reversed != 0 {
        result = result * 10 + reversed % 10
        reversed /= 10
    }
    return result
}

func reverseAndPrintNumbers(_ n: Int, _ numbers: [Int]) {
    for num in numbers {
        print(reverseNumber(num))
    }
}

print("Введите количество чисел:")
if let n = Int(readLine() ?? "0") {
    var numbers = [Int]()
    for i in 0..<n {
        print("Введите число #\(i + 1):")
        if let num = Int(readLine() ?? "0") {
            numbers.append(num)
        }
    }
    reverseAndPrintNumbers(n, numbers)
}
