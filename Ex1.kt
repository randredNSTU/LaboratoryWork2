fun main() {
    val str = "101tf11flb10001" // Исходная строка

    val pattern = Regex("1(0+)1") // Паттерн для поиска подстрок вида 1[0]1

    val matches = pattern.findAll(str) // Поиск всех подстрок, удовлетворяющих паттерну

    // Вывод результатов
    for (match in matches) {
        println(match.value) // Вывод найденной подстроки
    }
}
