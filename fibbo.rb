class Fibbo
  def ciag(x)
      farray = Array.new(x)
      farray[0] = 0
      farray[1] = 1
      for i in 1..x do
        ruby = i - 1
        ptr = farray[ruby]
        nextint = farray.at(i).to_i + ptr.to_i
        farray[i + 1] = nextint.to_i
        puts "#{i} wyraz ciagu #{farray[i]}"
      end
    end
end

if __FILE__ == $0
  puts "in"
  scan = gets.chomp.to_i()
  klasa = Fibbo.new()
  klasa.ciag(scan)
end
