def my_sqrt(x)
    return 0 if x == 0
    guess = 1.0
    precision = 0.0000001
    loop do
        next_guess = (guess + x / guess) / 2
        break if (next_guess - guess).abs < precision
        guess = next_guess
    end
    guess.to_i
end

p my_sqrt(1600)
