import java.util.HashMap;
import java.util.Scanner;

public class Main {
    // Функция для преобразования римского числа в натуральное число
    public static int romanToInt(String romanNumeral) {
        // Создаем HashMap для соответствия римских цифр и их значений
        HashMap<Character, Integer> romanNumerals = new HashMap<>();
        romanNumerals.put('I', 1);
        romanNumerals.put('V', 5);
        romanNumerals.put('X', 10);
        romanNumerals.put('L', 50);
        romanNumerals.put('C', 100);
        romanNumerals.put('D', 500);
        romanNumerals.put('M', 1000);

        int result = 0;
        int prev = 0;
        for (int i = romanNumeral.length() - 1; i >= 0; i--) {
            int current = romanNumerals.get(romanNumeral.charAt(i));
            if (current < prev) {
                result -= current;
            } else {
                result += current;
            }
            prev = current;
        }

        return result;
    }

    public static void main(String[] args) {
        // Получаем ввод от пользователя
        Scanner scanner = new Scanner(System.in);
        System.out.print("Введите римское число: ");
        String romanNumeral = scanner.nextLine().toUpperCase();

        // Преобразуем римское число в натуральное и выводим результат
        int result = romanToInt(romanNumeral);
        System.out.println("Результат: " + result);
    }
}
