import java.util.ArrayList;
import java.util.List;

public class Main {

    static List<String> findSubstrings(String str) {
        List<String> substrings = new ArrayList<>();

        for (int i = 0; i < str.length(); ++i) {
            if (str.charAt(i) == '1' && i < str.length() - 2 && str.charAt(i + 1) == '0') {
                int j = i + 2;
                while (j < str.length() && str.charAt(j) == '0') {
                    ++j;
                }
                if (j < str.length() && str.charAt(j) == '1') {
                    substrings.add(str.substring(i, j + 1));
                }
                i = j - 1;
            }
        }

        return substrings;
    }

    public static void main(String[] args) {
        String str1 = "101tf11flb10001";
        String str2 = "101001tf11flb10001";

        List<String> result1 = findSubstrings(str1);
        List<String> result2 = findSubstrings(str2);

        System.out.println("Результат для первой строки: " + String.join(", ", result1) + ".");
        System.out.println("Результат для второй строки: " + String.join(", ", result2) + ".");
    }
}
