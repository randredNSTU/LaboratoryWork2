package main // Определяем, что это пакет main, который является входной точкой для выполнения программы

import ( // Импортируем стандартные библиотеки fmt и regexp для работы с форматированным выводом и регулярными выражениями соответственно
  "fmt"
  "regexp"
)

func main() {
  pattern := regexp.MustCompile(`1[0]+1`) // Создаем регулярное выражение для поиска подстроки вида 1[0]+1

  str := "101tf11flb10001" // Входная строка, в которой будем искать подстроки

  matches := pattern.FindAllString(str, -1) // Получаем массив всех найденных подстрок, удовлетворяющих шаблону

  fmt.Println("Результат:") // Выводим результаты

  for _, match := range matches { // Перебираем найденные подстроки и выводим их
    fmt.Println(match)
  }
}
