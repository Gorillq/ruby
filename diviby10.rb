=begin
You are provided an array A of size N that contains non-negative integers.
Your task is to determine whether the number that is formed by selecting
the last digit of all the N numbers is divisible by 10
probably best answer for ruby on hackerearth for now :O
=end
=begin
if __FILE__ == $0
    size = gets.chomp.to_i
    array = gets.chomp.split.map(&:to_i)
    last_digit = array.map {|num| num % 10}
    final = last_digit.join.to_i
    puts final % 10 == 0 ? "Yes" : "No"
end
=end

if __FILE__ == $0
    size = gets.chomp.to_i
    array = gets.chomp
    last_digit = array[-1].to_i
    puts last_digit == 0 ? "Yes" : "No"
end


