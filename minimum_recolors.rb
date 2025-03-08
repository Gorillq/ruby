#!/usr/bin/env ruby

#minimum recolors leetcode of the day 8-03-2025 leet->2379

def minimum_recolors(blocks, k)
    substrings = (0...(blocks.length - k + 1)).map { |i| blocks[i...(i + k)] }
    min = substrings.map { |s| s.count('W') }.min
end

string =  "WBBWWBBWBW"
p minimum_recolors(string, 7)
