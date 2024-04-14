def reverse_number(num)
    reversed = 0
    temp = num
    while temp != 0
        reversed = reversed * 10 + temp % 10
        temp /= 10
    end
    result = 0
    while reversed != 0
        result = result * 10 + reversed % 10
        reversed /= 10
    end
    return result
end

def reverse_and_print_numbers(n, numbers)
    numbers.each do |num|
        puts reverse_number(num)
    end
end

print "Введите количество чисел: "
n = gets.chomp.to_i
numbers = []
n.times do |i|
    print "Введите число ##{i + 1}: "
    numbers << gets.chomp.to_i
end

reverse_and_print_numbers(n, numbers)
