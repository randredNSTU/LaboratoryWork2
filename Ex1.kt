fun findSubstrings(str: String): List<String> {
    val substrings = mutableListOf<String>()
    var i = 0
    while (i < str.length) {
        if (str[i] == '1' && i < str.length - 2 && str[i + 1] == '0') {
            var j = i + 2
            while (j < str.length && str[j] == '0') {
                j++
            }
            if (j < str.length && str[j] == '1') {
                substrings.add(str.substring(i, j + 1))
            }
            i = j - 1
        }
        i++
    }
    return substrings
}

fun main() {
    val str1 = "101tf11flb10001"
    val str2 = "101001tf11flb10001"

    val result1 = findSubstrings(str1)
    val result2 = findSubstrings(str2)

    println("Результат для первой строки: ${result1.joinToString(", ")}.")
    println("Результат для второй строки: ${result2.joinToString(", ")}.")
}
