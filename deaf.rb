class Solution
  def initialize
    @counter = 0
  end
  def reset
    @counter = 0
  end
  def greeter
    puts "Say sth to grandma!"
  end
  def huh
    puts "HUH?! SPEAK UP KAMIRU!"
  end
  def notsince
    year = 1920 + rand(35)
    puts "NOT SINCE #{year}"
  end
  def scaner
    input = gets.chomp() 
    return input
  end
  def capital?(input)
    if input == input.upcase
      notsince
      reset
      return
    end
    huh
    reset
  end
  def bye?(input)
    keyword = "BYE"
    if input == keyword
      @counter += 1
      if @counter >= 3
        puts "GOOD BYE!"
        Kernel.exit!(0)
      end
      huh
      programLogic
    end
  end
  def programLogic
    loop do
      greeter
      tmp = scaner
      if tmp == "" || tmp.nil?
        programLogic
      end
      bye?(tmp)
      capital?(tmp)
    end
  end
end

if __FILE__ == $0
  Solution.new.programLogic
end


