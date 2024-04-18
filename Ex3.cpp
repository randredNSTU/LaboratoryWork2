#include <iostream>
#include <vector>
using namespace std;

// Функция для переворачивания числа
int reverseNumber(int num) {
    int reversed = 0; // Переменная для хранения перевернутого числа
    int temp = num; // Временная переменная для хранения исходного числа
    while (temp != 0) {
        reversed = reversed * 10 + temp % 10; // Добавляем последнюю цифру исходного числа в перевернутое
        temp /= 10; // Удаляем последнюю цифру исходного числа
    }
    int result = 0; // Переменная для хранения итогового числа без ведущих нулей
    while (reversed != 0) {
        result = result * 10 + reversed % 10; // Добавляем последнюю цифру перевернутого числа в итоговое
        reversed /= 10; // Удаляем последнюю цифру перевернутого числа
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
