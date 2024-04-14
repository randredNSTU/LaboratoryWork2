use std::collections::HashMap;
use std::io;

// Функция для преобразования римского числа в натуральное число
fn roman_to_int(roman_numeral: &str) -> i32 {
    // Создаем HashMap для соответствия римских цифр и их значений
    let mut roman_numerals = HashMap::new();
    roman_numerals.insert('I', 1);
    roman_numerals.insert('V', 5);
    roman_numerals.insert('X', 10);
    roman_numerals.insert('L', 50);
    roman_numerals.insert('C', 100);
    roman_numerals.insert('D', 500);
    roman_numerals.insert('M', 1000);

    let mut result = 0;
    let mut prev = 0;
    for char in roman_numeral.chars().rev() {
        let current = roman_numerals.get(&char).unwrap();
        if *current < prev {
            result -= current;
        } else {
            result += current;
        }
        prev = *current;
    }
    result
}

fn main() {
    // Получаем ввод от пользователя
    println!("Введите римское число:");
    let mut roman_numeral = String::new();
    io::stdin().read_line(&mut roman_numeral)
        .expect("Ошибка при чтении строки");
    let roman_numeral = roman_numeral.trim().to_uppercase();

    // Преобразуем римское число в натуральное и выводим результат
    let result = roman_to_int(&roman_numeral);
    println!("Результат: {}", result);
}
