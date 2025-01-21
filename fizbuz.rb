#!/usr/bin/env ruby

class Fizzbuzz
  def logic
    loop do
      puts "Gibe input now!"
      #$stdout.flush
      num = gets.chomp.to_i
      if num % 3 == 0 && num % 5 == 0
        puts "FizzBuzz"
      elsif num % 3 == 0
        puts "Fizz"
      elsif num % 5 == 0
        puts "Buzz"
      else
        puts "Better luck next time"
      end
      print "Continue?(y/n) "
      decision = gets.chomp
      break if decision.upcase == 'N'
    end
  end
end

if __FILE__ == $0
  Fizzbuzz.new.logic
end
