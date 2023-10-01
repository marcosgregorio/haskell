calculaMedia x y z = ((x * 2) + (y * 3) + (z * 5)) / 10 
conceitoFinal media 
  | media >= 8.0 && media <= 10 = "A"
  | media >= 7 && media < 8 = "B"
  | media >= 6 && media < 7 = "C"
  | media >= 5 && media < 6 = "D"
  | otherwise               = "F"

-- $> conceitoFinal(calculaMedia x y z) 
