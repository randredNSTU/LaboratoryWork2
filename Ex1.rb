def find_substrings(str)
  substrings = []

  i = 0
  while i < str.length
    if str[i] == '1' && i < str.length - 2 && str[i + 1] == '0'
      j = i + 2
      while j < str.length && str[j] == '0'
        j += 1
      end
      if j < str.length && str[j] == '1'
        substrings.push(str[i..j])
      end
      i = j - 1
    end
    i += 1
  end

  substrings
end

str1 = "101tf11flb10001"
str2 = "101001tf11flb10001"

result1 = find_substrings(str1)
result2 = find_substrings(str2)

puts "Результат для первой строки: #{result1.join(', ')}."
puts "Результат для второй строки: #{result2.join(', ')}."
