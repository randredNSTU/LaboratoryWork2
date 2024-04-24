function findSubstrings(str) {
    let substrings = [];

    for (let i = 0; i < str.length; ++i) { // Проходим по строке
        if (str[i] === '1' && i < str.length - 2 && str[i + 1] === '0') { // Если текущий символ - '1' и есть место для последующих символов '0' и '1'
            let j = i + 2; // Указатель на следующий символ после '0'
            while (j < str.length && str[j] === '0') { // Пока следующие символы - '0', увеличиваем j
                ++j;
            }
            if (j < str.length && str[j] === '1') { // Если следующий символ после '0' - '1', найдена подстрока
                substrings.push(str.substring(i, j + 1)); // Добавляем подстроку в вектор
            }
            i = j - 1; // Устанавливаем i в конец найденной подстроки
        }
    }

    return substrings; // Возвращаем вектор найденных подстрок
}

let str1 = "101tf11flb10001"; // Первая строка
let str2 = "101001tf11flb10001"; // Вторая строка

let result1 = findSubstrings(str1); // Находим подстроки для первой строки
let result2 = findSubstrings(str2);

console.log("Результат для первой строки: " + result1.join(", ") + "."); // Выводим результат для первой строки
console.log("Результат для второй строки: " + result2.join(", ") + ".");
