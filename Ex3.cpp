#include <iostream>
#include <vector>
using namespace std;

// Функция для переворачивания числа
int reverseNumber(int num) {
    int result = 0; // Переменная для хранения итогового числа без ведущих нулей
    while (num != 0) {
        int digit = num % 10; // Получаем последнюю цифру исходного числа
        if (result != 0 || digit != 0) { // Если result не равен нулю или последняя цифра не равна нулю
            result = result * 10 + digit; // Добавляем последнюю цифру исходного числа в итоговое
        }
        num /= 10; // Удаляем последнюю цифру исходного числа
    }
    return result; // Возвращаем итоговое число без ведущих нулей
}

// Функция для переворачивания каждого числа в векторе и вывода без ведущих нулей
void reverseAndPrintNumbers(int n, vector<int>& numbers) {
    for (int i = 0; i < n; i++) {
        cout << reverseNumber(numbers[i]) << endl; // Выводим перевернутое число без ведущих нулей
    }
}

int main() {
    cout << "Введите количество чисел:" << endl; // Запрос количества чисел
    int n;
    cin >> n; // Ввод количества чисел
    vector<int> numbers(n); // Вектор для хранения введенных чисел
    for (int i = 0; i < n; i++) {
        cout << "Введите число #" << i + 1 << ":" << endl; // Запрос каждого числа
        cin >> numbers[i]; // Ввод каждого числа
    }
    reverseAndPrintNumbers(n, numbers); // Переворачиваем и выводим числа без ведущих нулей
    return 0;
}