#include <iostream>
#include <vector>
using namespace std;

int reverseNumber(int num) {
    int reversed = 0;
    int temp = num;
    while (temp != 0) {
        reversed = reversed * 10 + temp % 10;
        temp /= 10;
    }
    int result = 0;
    while (reversed != 0) {
        result = result * 10 + reversed % 10;
        reversed /= 10;
    }
    return result;
}

void reverseAndPrintNumbers(int n, vector<int>& numbers) {
    for (int i = 0; i < n; i++) {
        cout << reverseNumber(numbers[i]) << endl;
    }
}

int main() {
    cout << "Введите количество чисел:" << endl;
    int n;
    cin >> n;
    vector<int> numbers(n);
    for (int i = 0; i < n; i++) {
        cout << "Введите число #" << i + 1 << ":" << endl;
        cin >> numbers[i];
    }
    reverseAndPrintNumbers(n, numbers);
    return 0;
}
