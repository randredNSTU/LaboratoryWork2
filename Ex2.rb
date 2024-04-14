# Функция для преобразования римского числа в натуральное число
def roman_to_int(roman_numeral)
    # Создаем хеш для соответствия римских цифр и их значений
    roman_numerals = {
        'I' => 1,
        'V' => 5,
        'X' => 10,
        'L' => 50,
        'C' => 100,
        'D' => 500,
        'M' => 1000
    }
    
    result = 0
    prev = 0
    roman_numeral.reverse.each_char do |char|
        current = roman_numerals[char]
        if current < prev
            result -= current
        else
            result += current
        end
        prev = current
    end
    
    return result
end

# Получаем ввод от пользователя и выводим результат
print "Введите римское число: "
roman_numeral = gets.chomp.upcase
puts "Результат: #{roman_to_int(roman_numeral)}"
