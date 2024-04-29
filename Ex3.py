# Функция для переворачивания числа
def reverse_number(num):
    result = 0
    while num != 0:
        digit = num % 10
        if result != 0 or digit != 0:
            result = result * 10 + digit
        num //= 10
    return result

# Функция для переворачивания каждого числа в списке и вывода без ведущих нулей
def reverse_and_print_numbers(numbers):
    for num in numbers:
        print(reverse_number(num))

print("Введите количество чисел:")
n = int(input()) # Запрос количества чисел
numbers = []
for i in range(n):
    print(f"Введите число #{i + 1}:")
    numbers.append(int(input())) # Ввод каждого числа
reverse_and_print_numbers(numbers) # Переворачиваем и выводим числа без ведущих нулей
