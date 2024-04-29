use std::io;

// Функция для переворачивания числа
fn reverse_number(mut num: i32) -> i32 {
    let mut result = 0;
    while num != 0 {
        let digit = num % 10;
        if result != 0 || digit != 0 {
            result = result * 10 + digit;
        }
        num /= 10;
    }
    result
}

// Функция для переворачивания каждого числа в векторе и вывода без ведущих нулей
fn reverse_and_print_numbers(numbers: Vec<i32>) {
    for num in numbers {
        println!("{}", reverse_number(num));
    }
}

fn main() {
    println!("Введите количество чисел:");
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Ошибка ввода"); // Запрос количества чисел
    let n: i32 = input.trim().parse().expect("Неверный формат числа");
    let mut numbers = Vec::new();
    for i in 0..n {
        println!("Введите число #{}:", i + 1);
        input.clear();
        io::stdin().read_line(&mut input).expect("Ошибка ввода"); // Ввод каждого числа
        let num: i32 = input.trim().parse().expect("Неверный формат числа");
        numbers.push(num);
    }
    reverse_and_print_numbers(numbers); // Переворачиваем и выводим числа без ведущих нулей
}
