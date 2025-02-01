=begin
leetcode of the day 01-02-2025
An array is considered special if every pair of its adjacent elements
contains two numbers with different parity.

You are given an array of integers nums.
Return true if nums is a special array, otherwise, return false.

My note: array with one element is special by definition
=end

def is_array_special(nums)
  return true if nums.length == 1
  (1...nums.length).each do |i|
    if (nums[i] % 2 == 0) == (nums[i-1] % 2 == 0)
      return false
    end
  end
  true
end

if __FILE__ == $0
  test_case = [2,1,4]
  p is_array_special(test_case)
end
