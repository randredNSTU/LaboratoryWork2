using System;

class Program
{
    static int ReverseNumber(int num)
    {
        int reversed = 0;
        int temp = num;
        while (temp != 0)
        {
            reversed = reversed * 10 + temp % 10;
            temp /= 10;
        }
        int result = 0;
        while (reversed != 0)
        {
            result = result * 10 + reversed % 10;
            reversed /= 10;
        }
        return result;
    }

    static void ReverseAndPrintNumbers(int n, int[] numbers)
    {
        for (int i = 0; i < n; i++)
        {
            Console.WriteLine(ReverseNumber(numbers[i]));
        }
    }

    static void Main(string[] args)
    {
        Console.WriteLine("Введите количество чисел:");
        if (int.TryParse(Console.ReadLine(), out int n))
        {
            int[] numbers = new int[n];
            for (int i = 0; i < n; i++)
            {
                Console.Write($"Введите число #{i + 1}: ");
                if (int.TryParse(Console.ReadLine(), out int num))
                {
                    numbers[i] = num;
                }
            }
            ReverseAndPrintNumbers(n, numbers);
        }
    }
}
