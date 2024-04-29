using System;
using System.Collections.Generic;

class Program
{
    static int ReverseNumber(int num)
    {
        int result = 0;
        while (num != 0)
        {
            int digit = num % 10;
            if (result != 0 || digit != 0)
            {
                result = result * 10 + digit;
            }
            num /= 10;
        }
        return result;
    }

    static void ReverseAndPrintNumbers(int n, List<int> numbers)
    {
        for (int i = 0; i < n; i++)
        {
            Console.WriteLine(ReverseNumber(numbers[i]));
        }
    }

    static void Main()
    {
        Console.WriteLine("Введите количество чисел:");
        int n = int.Parse(Console.ReadLine());
        List<int> numbers = new List<int>();
        for (int i = 0; i < n; i++)
        {
            Console.WriteLine($"Введите число #{i + 1}:");
            numbers.Add(int.Parse(Console.ReadLine()));
        }
        ReverseAndPrintNumbers(n, numbers);
    }
}