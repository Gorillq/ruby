class Game
  $plays = 6
  def initialize(members)
    @members = members
  end
  def play
    players = @members
      goryl = $plays
      (1..goryl.to_i).each do |i|
        shot = rand(1..goryl)
        if shot == i
          puts "Killed at #{i} rounds"
          break
        elsif i == 6
          return 1
        else
          next
        end
      end
    end
  end

  if __FILE__ == $0
        puts "inp"
        scan = gets.chomp.to_i
        klasa = Game.new(scan)
        puts klasa.play
        return 0
  end
