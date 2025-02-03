=begin

#3105 leetcode
Longest strictly increasing or strictly decreasing subarray
leet of the day 04-02-2025
=end

def longest_monotonic_subarray(nums)
  max_inc = 1
  max_dec = 1
  counter_inc = 1
  counter_dec = 1
  (0...nums.length - 1).each do |i|
    if nums[i] < nums[i + 1]
      counter_inc += 1
      counter_dec = 1
    elsif nums[i] > nums[i + 1]
      counter_dec += 1
      counter_inc = 1
    else
      counter_inc = 1
      counter_dec = 1
    end
    max_inc = [max_inc, counter_inc].max
    max_dec = [max_dec, counter_dec].max
  end
  [max_inc, max_dec].max
end

test_case = [1,4,3,3,2]
p longest_monotonic_subarray(test_case)
