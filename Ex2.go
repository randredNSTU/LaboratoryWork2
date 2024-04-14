package main

import (
  "fmt"
)

// Функция для преобразования римского числа в натуральное число
func romanToInt(romanNumeral string) int {
  // Создаем словарь для соответствия римских цифр и их значений
  romanNumerals := map[byte]int{
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000,
  }

  result := 0
  for i := 0; i < len(romanNumeral); i++ {
    current := romanNumerals[romanNumeral[i]]
    if i+1 < len(romanNumeral) && current < romanNumerals[romanNumeral[i+1]] {
      result += romanNumerals[romanNumeral[i+1]] - current
      i++ // Пропускаем следующую цифру, так как она уже обработана
    } else {
      result += current
    }
  }

  return result
}

func main() {
  // Получаем ввод от пользователя
  var romanNumeral string
  fmt.Print("Введите римское число: ")
  fmt.Scan(&romanNumeral)

  // Преобразуем римское число в натуральное и выводим результат
  fmt.Println("Результат:", romanToInt(romanNumeral))
}
