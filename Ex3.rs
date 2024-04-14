use std::io;

fn reverse_number(mut num: i32) -> i32 {
    let mut reversed = 0;
    while num != 0 {
        reversed = reversed * 10 + num % 10;
        num /= 10;
    }
    let mut result = 0;
    while reversed != 0 {
        result = result * 10 + reversed % 10;
        reversed /= 10;
    }
    result
}

fn reverse_and_print_numbers(n: i32, numbers: &Vec<i32>) {
    for &num in numbers.iter() {
        println!("{}", reverse_number(num));
    }
}

fn main() {
    println!("Введите количество чисел:");
    let mut n = String::new();
    io::stdin().read_line(&mut n).expect("Ошибка ввода");
    let n: i32 = n.trim().parse().expect("Не удалось преобразовать в число");
    
    let mut numbers = Vec::new();
    for i in 0..n {
        println!("Введите число #{}:", i + 1);
        let mut num = String::new();
        io::stdin().read_line(&mut num).expect("Ошибка ввода");
        let num: i32 = num.trim().parse().expect("Не удалось преобразовать в число");
        numbers.push(num);
    }
    
    reverse_and_print_numbers(n, &numbers);
}
