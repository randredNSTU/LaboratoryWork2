using System;
using System.Collections.Generic;

class Program
{
    // Функция для преобразования римского числа в натуральное число
    static int RomanToInt(string romanNumeral)
    {
        // Создаем словарь для соответствия римских цифр и их значений
        var romanNumerals = new Dictionary<char, int>
        {
            {'I', 1},
            {'V', 5},
            {'X', 10},
            {'L', 50},
            {'C', 100},
            {'D', 500},
            {'M', 1000}
        };

        int result = 0;
        int prev = 0;
        for (int i = romanNumeral.Length - 1; i >= 0; i--)
        {
            int current = romanNumerals[romanNumeral[i]];
            if (current < prev)
            {
                result -= current;
            }
            else
            {
                result += current;
            }
            prev = current;
        }

        return result;
    }

    static void Main(string[] args)
    {
        // Получаем ввод от пользователя
        Console.Write("Введите римское число: ");
        string input = Console.ReadLine();

        // Преобразуем римское число в натуральное и выводим результат
        int result = RomanToInt(input.ToUpper()); // Преобразуем в верхний регистр для удобства
        Console.WriteLine("Результат: " + result);
    }
}
