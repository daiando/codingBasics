## 10! = 1 x 2 x 3 x 4 x 5 x 6 x 7 x 8 x 9 x 10 = 3628800
## factorial digit sum = 3 + 6 + 2 + 8 + 0 + 0 = 27


def fds(n)

  # arr = []
  # (n + 1).times.each{|e| arr << e if e > 0}
  # arr.flat_map.reduce(:*)
  # arr.flat_map.reduce(:*).to_s.split(//).map(&:to_i).reduce(:+)
  (1..n).to_a.flat_map.reduce(:*).to_s.split(//).map(&:to_i).reduce(:+)

end

p fds(100)

# def factorial_digit_sum(n)
#   (1..n).to_a.flat_map.reduce(:*).to_s.split(//).map(&:to_i).reduce(:+)
# end
