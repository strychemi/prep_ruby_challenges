def is_prime?(x)
  return true if x == 2 || x == 3
  return false if x % 2 == 0 || x % 3 == 0
  limit = (x ** (1/2.0)).to_i
  i = 1
  a = 6*i - 1
  b = 6*i + 1

  while a <= limit || b <= limit
    return false if x % a == 0 || x % b == 0
    i += 1
    a = 6*i - 1
    b = 6*i + 1
  end

  return true
end
