package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func reverseNumber(num int) int {
	result := 0
	for num != 0 {
		digit := num % 10
		if result != 0 || digit != 0 {
			result = result*10 + digit
		}
		num /= 10
	}
	return result
}

func reverseAndPrintNumbers(numbers []int) {
	for _, num := range numbers {
		fmt.Println(reverseNumber(num))
	}
}

func main() {
	fmt.Println("Введите количество чисел:")
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	n, _ := strconv.Atoi(scanner.Text())
	numbers := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Printf("Введите число #%d:\n", i+1)
		scanner.Scan()
		numbers[i], _ = strconv.Atoi(scanner.Text())
	}
	reverseAndPrintNumbers(numbers)
}