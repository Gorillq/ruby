#!/usr/bin/env ruby
if __FILE__ == $0
    songs = gets.chomp.to_i
    array = gets.chomp.split.map(&:to_i)
    #singer_count = array.tally
    singer_count = Hash.new(0)
    array.each { |song| singer_count[song] += 1 }
    max_count = singer_count.values.max
    favourite_count = singer_count.select{|_, count| count == max_count}.size
    puts favourite_count
end
