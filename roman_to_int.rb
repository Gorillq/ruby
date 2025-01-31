#leetcode #13
#not the best not the worst

def roman_to_int(s)
  dict = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }
  arr = s.chars
  result = 0
  skip_next = false
  (0...arr.length).each do |i|
    if skip_next
      skip_next = false
      next
    end
    if i + 1 < arr.length && dict[arr[i + 1]] > dict[arr[i]]
      tmp = dict[arr[i + 1]] - dict[arr[i]]
      result += tmp
      skip_next = true
    else
      result += dict[arr[i]]
    end
  end
  result
end

test = "MCMXCIV"
puts roman_to_int(test)
