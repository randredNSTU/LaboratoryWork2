def reverse_number(num):
    reversed_num = 0
    temp = num
    while temp != 0:
        reversed_num = reversed_num * 10 + temp % 10
        temp //= 10
    result = 0
    while reversed_num != 0:
        result = result * 10 + reversed_num % 10
        reversed_num //= 10
    return result

def reverse_and_print_numbers(n, numbers):
    for num in numbers:
        print(reverse_number(num))

n = int(input("Введите количество чисел: "))
numbers = []
for i in range(n):
    numbers.append(int(input(f"Введите число #{i + 1}: ")))

reverse_and_print_numbers(n, numbers)
