#!/usr/bin/env ruby
class Solution
  def initialize(array)
    @array = array
  end
  def last_digits
    last_digits = @array[-1].to_i
    last_digits
  end
  def by10?
    last_digit = last_digits
    puts last_digit == 0 ? "Yes" : "No"
  end
  def by3?
    last_digit = last_digits
    if ![0, 3, 6, 9].include?(last_digit)
      puts "No"
    else
     #check what it does result = @array.join.to_i
      result = @array.map {|num| num % 10}.sum
      puts result % 3 == 0 ? "Yes" : "No"
      end
  end
  def by5?
    last_digit = last_digits
    puts [0, 5].include?(last_digit) ? "Yes" : "No"
  end
  def by7?
    last_digit = last_digits
    if [0, 7].include?(last_digit)
      puts "No"
    else
      number = @array.map {|num| num % 10}.join.to_i
      while number >= 70
        number = (number / 10) - 2 * (number % 10)
      end
      number % 7 == 0 ? "Yes" : "No"
    end
  end
  def by9?
    last_digit = last_digits
    if last_digit % 2 == 0
      puts "No"
    else
      sum = @array.map {|num| num % 10}.sum
      puts sum % 9 == 0 ? "Yes" : "No"
    end
  end
  def program_logic
    by10?
    by3?
    by5?
    by7?
    by9?
  end
end

if __FILE__ == $0
  puts "Gibe me string of integers now!"
  arr = gets.chomp.split.map(&:to_i)
  Solution.new(arr).program_logic
end

