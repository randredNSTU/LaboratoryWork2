import java.util.regex.Matcher; // Импорт класса Matcher из пакета java.util.regex, который позволяет осуществлять поиск по регулярным выражениям в строках
import java.util.regex.Pattern; // Импорт класса Pattern из пакета java.util.regex, который представляет собой скомпилированный шаблон регулярного выражения

public class Main {
    public static void main(String[] args) {
        String str = "101tf11flb10001"; // Входная строка, в которой будем искать подстроки
        String pattern = "1[0]+1"; // Шаблон регулярного выражения для поиска подстроки вида 1[0]+1
        Pattern p = Pattern.compile(pattern); // Компилируем шаблон регулярного выражения в объект Pattern
        Matcher m = p.matcher(str); // Создаем объект Matcher для работы с строкой
        System.out.println("Результат:"); // Выводим результаты

        while (m.find()) { // Пока находим подстроки, удовлетворяющие шаблону, выводим их
            System.out.println(m.group()); // Выводим найденную подстроку
        }
    }
}
