#include <iostream>
#include <string>
#include <vector>

using namespace std;

vector<string> findSubstrings(const string& str) { // Функция для поиска подстрок, удовлетворяющих заданному шаблону
    vector<string> substrings; // Вектор для хранения найденных подстрок

    for (size_t i = 0; i < str.size(); ++i) { // Проходим по строке
        if (str[i] == '1' && i < str.size() - 2 && str[i + 1] == '0') { // Если текущий символ - '1' и есть место для последующих символов '0' и '1'
            size_t j = i + 2; // Указатель на следующий символ после '0'

            while (j < str.size() && str[j] == '0') { // Пока следующие символы - '0', увеличиваем j
                ++j;
            }

            if (j < str.size() && str[j] == '1') { // Если следующий символ после '0' - '1', найдена подстрока
                substrings.push_back(str.substr(i, j - i + 1)); // Добавляем подстроку в вектор
            }

            i = j - 1; // Устанавливаем i в конец найденной подстроки
        }
    }

    return substrings; // Возвращаем вектор найденных подстрок
}

int main() {
    string str1 = "101tf11flb10001"; // Первая строка
    string str2 = "101001tf11flb10001"; // Вторая строка

    vector<string> result1 = findSubstrings(str1); // Находим подстроки для первой строки
    vector<string> result2 = findSubstrings(str2); // Находим подстроки для второй строки

    cout << "Результат для первой строки: "; // Выводим результат для первой строки
    for (size_t i = 0; i < result1.size(); ++i) { // Проходим по найденным подстрокам
        cout << result1[i]; // Выводим подстроку
        if (i != result1.size() - 1) // Если это не последний элемент, выводим запятую
            cout << ", ";
    }
    cout << '.' << endl;

    cout << "Результат для второй строки: "; // Выводим результат для второй строки
    for (size_t i = 0; i < result2.size(); ++i) { // Проходим по найденным подстрокам
        cout << result2[i]; // Выводим подстроку
        if (i != result2.size() - 1) // Если это не последний элемент, выводим запятую
            cout << ", ";
    }
    cout << '.' << endl;

    return 0; // Завершаем программу
}
