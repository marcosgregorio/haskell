fatorial :: Integer  -> Integer
fatorial n = if n <= 0
  then 1
  else fatorial (n - 2) * n
