# Функция для преобразования римского числа в натуральное число
def roman_to_int(roman_numeral):
    # Создаем словарь для соответствия римских цифр и их значений
    roman_numerals = {'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000}

    result = 0
    prev = 0
    for char in reversed(roman_numeral):  # Обходим римское число в обратном порядке
        current = roman_numerals[char]
        if current < prev:
            result -= current
        else:
            result += current
        prev = current

    return result

def main():
    # Получаем ввод от пользователя
    roman_numeral = input("Введите римское число: ").upper()

    # Преобразуем римское число в натуральное и выводим результат
    result = roman_to_int(roman_numeral)
    print("Результат:", result)

if __name__ == "__main__":
    main()
