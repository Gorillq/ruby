=begin
leet code #2373 Largest local value in a matrix
I didnt like it, but it is me
=end
# @param {Integer[][]} grid
# @return {Integer[][]}
def largest_local(grid)
    n = grid.length
    m = Array.new(n - 2) { Array.new(n - 2, 0) }
    (0...(n-2)).each do |i|
        (0...(n-2)).each do |j|
            max_val = 0
            (0..2).each do |x|
                (0..2).each do |y|
                    max_val = [max_val, grid[i+x][j+y]].max
                end
            end
        m[i][j] = max_val
        end
    end
    m
end

if __FILE__ == $0
  grid = [[9,9,8,1],[5,6,2,6],[8,2,6,4],[6,2,2,2]]
  p largest_local(grid)
end
