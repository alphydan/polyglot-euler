require "big_int"

struct BigInt
  def factorial
    return 1 if zero?
    self * (self - 1).factorial
  end
end

def combination(n, k)
  n.factorial.to_big_i / (k.factorial * (n - k).factorial).to_big_i
end

def count_routes(k)
  combination(2 * k, k)
end

puts count_routes(20.to_big_i)
