import java.util.Scanner;

public class Main {
    public static int reverseNumber(int num) {
        int reversed = 0;
        int temp = num;
        while (temp != 0) {
            reversed = reversed * 10 + temp % 10;
            temp /= 10;
        }
        int result = 0;
        while (reversed != 0) {
            result = result * 10 + reversed % 10;
            reversed /= 10;
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
        System.out.print("Введите количество чисел: ");
        int n = scanner.nextInt();
        int[] numbers = new int[n];
        for (int i = 0; i < n; i++) {
            System.out.print("Введите число #" + (i + 1) + ": ");
            numbers[i] = scanner.nextInt();
        }
        reverseAndPrintNumbers(n, numbers);
    }
}
