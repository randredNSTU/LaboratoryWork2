#include <iostream>
#include <string>
#include <regex>

int main() {
    std::string str = "101tf11flb10001"; // Исходная строка

    std::regex pattern("1(0+)1"); // Паттерн для поиска подстрок вида 1[0]1

    std::sregex_iterator it(str.begin(), str.end(), pattern); // Поиск всех подстрок, удовлетворяющих паттерну
    std::sregex_iterator end; // Конечный итератор (конец строки)

    while (it != end) { // Вывод результатов
        std::cout << it->str() << std::endl; // Вывод найденной подстроки
        ++it; // Переход к следующему совпадению
    }

    return 0;
}
