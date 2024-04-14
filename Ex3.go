package main

import (
  "fmt"
)

func reverseNumber(num int) int {
  reversed := 0
  for num != 0 {
    reversed = reversed*10 + num%10
    num /= 10
  }
  result := 0
  for reversed != 0 {
    result = result*10 + reversed%10
    reversed /= 10
  }
  return result
}

func reverseAndPrintNumbers(n int, numbers []int) {
  for i := 0; i < n; i++ {
    fmt.Println(reverseNumber(numbers[i]))
  }
}

func main() {
  var n int
  fmt.Print("Введите количество чисел: ")
  fmt.Scan(&n)
  numbers := make([]int, n)
  for i := 0; i < n; i++ {
    fmt.Printf("Введите число #%d: ", i+1)
    fmt.Scan(&numbers[i])
  }

  reverseAndPrintNumbers(n, numbers)
}
