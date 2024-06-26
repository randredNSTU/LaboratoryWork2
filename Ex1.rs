fn find_substrings(s: &str) -> Vec<String> {
    let mut substrings = Vec::new(); // Создаем вектор для хранения найденных подстрок
    let mut chars = s.chars().enumerate(); // Создаем итератор по символам строки, включая их индексы

    while let Some((i, c)) = chars.next() { // Проходим по каждому символу и его индексу
        if c == '1' { // Если текущий символ - '1'
            if let Some((j, '0')) = chars.clone().next() { // Если следующий символ - '0'
                let mut k = j; // Запоминаем индекс следующего символа
                while let Some((_, next_char)) = chars.clone().next() { // Проходим по оставшимся символам
                    if next_char == '1' { // Если следующий символ - '1'
                        substrings.push(s[i..=k].to_string()); // Добавляем найденную подстроку в вектор
                        break; // Завершаем цикл
                    }
                    k += 1; // Увеличиваем индекс
                    chars.next(); // Переходим к следующему символу
                }
            }
        }
    }

    substrings // Возвращаем вектор найденных подстрок
}

fn main() {
    let str1 = "101tf11flb10001"; // Первая строка
    let str2 = "101001tf11flb10001"; // Вторая строка

    let result1 = find_substrings(str1); // Находим подстроки для первой строки
    let result2 = find_substrings(str2); // Находим подстроки для второй строки

    println!("Результат для первой строки: {}.", result1.join(", ")); // Выводим результат для первой строки
    println!("Результат для второй строки: {}.", result2.join(", ")); // Выводим результат для второй строки
}
