require 'mathn'

class Integer
  def dsum
    return 1 if self < 2

    pd = prime_division.flat_map{ |n, p| [n]*p }

    ([1] + (1...pd.size).flat_map{|e| pd.combination(e).map{|f| f.reduce(:*) }}).uniq.inject(:+)
  end
end

def find_d_sum(n)
  n.times.inject do |sum, cur|
    other = cur.dsum
    (cur != other && other.dsum == cur) ? sum + cur : sum
  end
end

p find_d_sum(10_000)


# p [1]*3
# p 220.prime_division
# p 220.prime_division.flat_map{ |n, p| n + p }
# p 220.prime_division.flat_map{ |n, p| [n]*p }
# pd = 220.prime_division.flat_map{ |n, p| [n]*p }
# p pd.size
# p pd
# p [1] + (1...pd.size).flat_map{|e| e }
# p [1] + (1...pd.size).flat_map{|e| pd.combination(e).map{|f| f} }
# p [1,2,3].flat_map{|e| [4, 5, 6].combination(e).map{|f| f}}
# p [1,2,3].flat_map{|e| [4, 5, 6].combination(e).map{|f| f.reduce(:*)}}
# p [1,2,3].flat_map{|e| [4, 5, 6].combination(e).map{|f| f.reduce(:*)}}.inject(:+)

# def find_d_sum(n)
#   n.times.inject do |sum, cur|
#     p sum
#     p cur
#   end
# end
#
# p find_d_sum(5)
