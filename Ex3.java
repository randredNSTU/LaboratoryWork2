import java.util.Scanner;

public class Main {
    public static int reverseNumber(int num) {
        int result = 0;
        while (num != 0) {
            int digit = num % 10;
            if (result != 0 || digit != 0) {
                result = result * 10 + digit;
            }
            num /= 10;
        }
        return result;
    }

    public static void reverseAndPrintNumbers(int n, int[] numbers) {
        for (int i = 0; i < n; i++) {
            System.out.println(reverseNumber(numbers[i]));
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Введите количество чисел:");
        int n = scanner.nextInt();
        int[] numbers = new int[n];
        for (int i = 0; i < n; i++) {
            System.out.printf("Введите число #%d:\n", i + 1);
            numbers[i] = scanner.nextInt();
        }
        reverseAndPrintNumbers(n, numbers);
    }
}