#!/usr/bin/env ruby

#leetcode 2523. Closest Prime Numbers in Range

def closest_primes(left, right)
  return [-1, -1] if right < 2 || (left <= 2 && right < 3)

  max_div = Math.sqrt(right).to_i
  small_sieve = Array.new(max_div + 1, true)
  small_sieve[0] = small_sieve[1] = false
  (2..max_div).each do |i|
    if small_sieve[i]
      (i * i).step(max_div, i) { |j| small_sieve[j] = false }
    end
  end
  small_primes = (2..max_div).select { |i| small_sieve[i] }

  range_size = right - left + 1
  sieve = Array.new(range_size, true)
  if left <= 1
    (0..[1 - left, range_size - 1].min).each { |i| sieve[i] = false }
  end

  small_primes.each do |p|
    start = [left + (p - left % p) % p, p * p].max
    start.step(right, p) do |j|
      sieve[j - left] = false if j <= right
    end
  end


  prev = nil
  min_diff = Float::INFINITY
  best_pair = [-1, -1]

  (0...range_size).each do |i|
    num = left + i
    if sieve[i]
      if prev.nil?
        prev = num
      else
        diff = num - prev
        if diff < min_diff
          min_diff = diff
          best_pair = [prev, num]
          return best_pair if min_diff <= 2 
        end
        prev = num
      end
    end
  end
  best_pair
end

p closest_primes(4,6)
p closest_primes(10, 19)
