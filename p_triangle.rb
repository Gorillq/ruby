=begin
leetcode #118 Pascal's Triangle
Given an integer numRows, return the first numRows of Pascal's triangle.

My note: I like my solution, however it was easier for me to code it in cpp
=end
def generate(num_rows)
    pascal = [[1]]
    (1...num_rows).each do |i|
        result = [1]
        (0...i).each do |j|
            result << (pascal[i-1][j] || 0) + (pascal[i-1][j+1] || 0)
        end
        pascal << result
    end
    pascal
end

p generate(5)
