package main

import (
    "fmt"
    "strings"
)

func findSubstrings(str string) []string {
    var substrings []string

    for i := 0; i < len(str); i++ { // Проходим по строке
        if str[i] == '1' && i < len(str)-2 && str[i+1] == '0' { // Если текущий символ - '1' и есть место для последующих символов '0' и '1'
            j := i + 2 // Указатель на следующий символ после '0'
            for j < len(str) && str[j] == '0' { // Пока следующие символы - '0', увеличиваем j
                j++
            }
            if j < len(str) && str[j] == '1' { // Если следующий символ после '0' - '1', найдена подстрока
                substrings = append(substrings, str[i:j+1]) // Добавляем подстроку в вектор
            }
            i = j - 1 // Устанавливаем i в конец найденной подстроки
        }
    }

    return substrings // Возвращаем вектор найденных подстрок
}

func main() {
    str1 := "101tf11flb10001" // Первая строка
    str2 := "101001tf11flb10001" // Вторая строка

    result1 := findSubstrings(str1) // Находим подстроки для первой строки
    result2 := findSubstrings(str2) // Находим подстроки для второй строки

    fmt.Printf("Результат для первой строки: %s.\n", strings.Join(result1, ", ")) // Выводим результат для первой строки
    fmt.Printf("Результат для второй строки: %s.\n", strings.Join(result2, ", ")) // Выводим результат для второй строки
}
