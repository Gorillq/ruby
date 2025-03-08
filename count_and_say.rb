#!/usr/bin/env ruby

def count_and_say(n)
    return "1" if n == 1
    result = "1"
    (n - 1).times do
        current = result.chars
        temp = []
        count = 1             
        current.each_with_index do |digit, i|
            if i + 1 < current.length && current[i + 1] == digit
                count += 1
            else
                temp << count.to_s << digit
                count = 1
            end
        end
        result = temp.join
    end
    result
end

test = 4
p count_and_say(test)
