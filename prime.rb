def prime(n)
  return puts "not a prime" if n <= 1
  tmp = 0
  divider = n / 2
  (2..divider).each do |i|
    if n % i == 0
      tmp += 1
    end
  end
  puts tmp == 0 ? "is a prime" : "not a prime"
end

def prime_sqrt(n)
  return puts "not a prime" if n <= 1
  limit = Math.sqrt(n).floor
  (2..limit).each do |i|
    if n % i == 0
		return puts "not a prime"
    end
  end
  puts "is a prime"
end

if __FILE__ == $0
  n = 5
  prime(n)
  prime_sqrt(n)
end
