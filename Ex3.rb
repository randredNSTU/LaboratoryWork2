# Функция для переворачивания числа
def reverse_number(num)
    result = 0
    until num == 0
        digit = num % 10
        if result != 0 || digit != 0
            result = result * 10 + digit
        end
        num /= 10
    end
    result
end

# Функция для переворачивания каждого числа в массиве и вывода без ведущих нулей
def reverse_and_print_numbers(numbers)
    numbers.each do |num|
        puts reverse_number(num)
    end
end

puts "Введите количество чисел:"
n = gets.chomp.to_i # Запрос количества чисел
numbers = []
n.times do |i|
    puts "Введите число ##{i + 1}:"
    numbers << gets.chomp.to_i # Ввод каждого числа
end
reverse_and_print_numbers(numbers) # Переворачиваем и выводим числа без ведущих нулей
