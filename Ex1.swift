import Foundation // Импортируем Foundation для использования регулярных выражений

let pattern = "1[0]+1" // Создаем регулярное выражение для поиска подстроки вида 1[0]+1

let str = "101tf11flb10001" // Входная строка, в которой будем искать подстроки

do {
    let regex = try NSRegularExpression(pattern: pattern) // Создаем объект NSRegularExpression с заданным регулярным выражением
    let matches = regex.matches(in: str, range: NSRange(str.startIndex..., in: str)) // Ищем все совпадения в строке

    print("Результат:")
    for match in matches { // Перебираем найденные совпадения
        if let range = Range(match.range, in: str) { // Получаем диапазон совпадения в строке
            print(str[range]) // Выводим найденную подстроку
        }
    }
} catch {
    print("Ошибка при создании регулярного выражения: \(error)") // Обрабатываем возможные ошибки при создании регулярного выражения
}
