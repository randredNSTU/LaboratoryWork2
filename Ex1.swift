func findSubstrings(_ str: String) -> [String] {
    var substrings = [String]()

    var i = 0 // Используем var, чтобы переменная могла изменяться
    while i < str.count { // Проходим по строке
        if str[str.index(str.startIndex, offsetBy: i)] == "1" && i < str.count - 2 && str[str.index(str.startIndex, offsetBy: i + 1)] == "0" { // Если текущий символ - '1' и есть место для последующих символов '0' и '1'
            var j = i + 2 // Указатель на следующий символ после '0'
            while j < str.count && str[str.index(str.startIndex, offsetBy: j)] == "0" { // Пока следующие символы - '0', увеличиваем j
                j += 1
            }
            if j < str.count && str[str.index(str.startIndex, offsetBy: j)] == "1" { // Если следующий символ после '0' - '1', найдена подстрока
                substrings.append(String(str[str.index(str.startIndex, offsetBy: i)..<str.index(str.startIndex, offsetBy: j + 1)])) // Добавляем подстроку в вектор
            }
            i = j - 1 // Устанавливаем i в конец найденной подстроки
        }
        i += 1 // Увеличиваем i
    }

    return substrings // Возвращаем вектор найденных подстрок
}

let str1 = "101tf11flb10001" // Первая строка
let str2 = "101001tf11flb10001" // Вторая строка

let result1 = findSubstrings(str1) // Находим подстроки для первой строки
let result2 = findSubstrings(str2) // Находим подстроки для второй строки

print("Результат для первой строки: \(result1.joined(separator: ", ")).") // Выводим результат для первой строки
print("Результат для второй строки: \(result2.joined(separator: ", ")).") // Выводим результат для второй строки
