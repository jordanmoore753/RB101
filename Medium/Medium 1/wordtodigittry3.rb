def sum(n)
  return 1 if n == 1
  n + sum(n - 1)
end

p sum(9)