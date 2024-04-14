using System;
using System.Text.RegularExpressions;

class Program
{
    static void Main()
    {
        string pattern = @"1[0]+1"; // Создаем регулярное выражение для поиска подстроки вида 1[0]+1

        string str = "101tf11flb10001"; // Входная строка, в которой будем искать подстроки

        Regex regex = new Regex(pattern); // Создаем объект Regex для работы с регулярными выражениями

        Console.WriteLine("Результат:");
        MatchCollection matches = regex.Matches(str); // Ищем все совпадения в строке

        foreach (Match match in matches) // Перебираем найденные совпадения
        {
            Console.WriteLine(match.Value); // Выводим найденную подстроку
        }
    }
}
