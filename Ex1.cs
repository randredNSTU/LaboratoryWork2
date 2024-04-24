using System;
using System.Collections.Generic;

class Program
{
    static List<string> FindSubstrings(string str)
    {
        List<string> substrings = new List<string>();

        for (int i = 0; i < str.Length; ++i) // Проходим по строке
        {
            if (str[i] == '1' && i < str.Length - 2 && str[i + 1] == '0') // Если текущий символ - '1' и есть место для последующих символов '0' и '1'
            {
                int j = i + 2; // Указатель на следующий символ после '0'
                while (j < str.Length && str[j] == '0') // Пока следующие символы - '0', увеличиваем j
                {
                    j++;
                }
                if (j < str.Length && str[j] == '1') // Если следующий символ после '0' - '1', найдена подстрока
                {
                    substrings.Add(str.Substring(i, j - i + 1)); // Добавляем подстроку в список
                }
                i = j - 1; // Устанавливаем i в конец найденной подстроки
            }
        }

        return substrings; // Возвращаем список найденных подстрок
    }

    static void Main(string[] args)
    {
        string str1 = "101tf11flb10001"; // Первая строка
        string str2 = "101001tf11flb10001"; // Вторая строка

        List<string> result1 = FindSubstrings(str1); // Находим подстроки для первой строки
        List<string> result2 = FindSubstrings(str2); // Находим подстроки для второй строки

        Console.WriteLine("Результат для первой строки: " + string.Join(", ", result1) + "."); // Выводим результат для первой строки
        Console.WriteLine("Результат для второй строки: " + string.Join(", ", result2) + "."); // Выводим результат для второй строки
    }
}
