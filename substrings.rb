#!/usr/bin/env ruby

def gen_substring(string)
  (0...string.length).flat_map { |i| (i...string.length).map { |j| string[i..j] } }
end

string = "WBBWWBBWBW"
p gen_substring(string)
