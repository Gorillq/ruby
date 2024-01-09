class Calc
    def add(x, y)
        x+y
    end
    def diff(x, y)
        x-y
    end
    def prod(x, y)
        x*y
    end
    def remand(x, y)
        first = x / y
        second = x % y
        puts "Dzielenie: #{first}, reszta: #{second}"
    end
    def powd(x, y)
        limit = x**y
        if limit < 1000000000
            puts "Potegowanie: #{limit}"
        else
            puts "duzo"
        end
    end
end

if __FILE__ == $0
    puts "Pierwsza liczba: \n"
    pierwsz = gets.chomp.to_i()
    puts "Druga liczba \n"
    druga = gets.chomp.to_i()
    klasa = Calc.new()
    puts "Dodawanie: #{klasa.add(pierwsz, druga)}"
    puts "Odejmowanie: #{klasa.diff(pierwsz, druga)}"
    puts "Mnozenie: #{klasa.prod(pierwsz, druga)}"
    klasa.remand(pierwsz, druga)
    klasa.powd(pierwsz, druga)
end
