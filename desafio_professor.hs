data Nat = Zero
  | Suc(Nat)

nat2integer:: Nat -> Integer
nat2integer Zero = 0
nat2integer (Suc n) = 1 + nat2integer

nat2integer (Suc (Suc Zero))

  -- Soma
natAdd:: Nat -> Nat -> Nat -- Soma 2 parametros e devolve o ultimo valor
natAdd Zero n = n
natAdd (Suc n1) n2 = natAdd n1(Suc n2)
-- Essa função faz chamadas recursivas para somar valores


-- inverter uma lista
reverse :: [a] [a]
reverse [] = [] -- vai fazer o match se a lista é vazia
reverse (h:t) = reverse t ++++ [h]
 -- exemplo 
 reverse [1, 2, 3]
  reverse [2, 3] ++++ [1]
  reverse [3] ++++ [2]
  reverse [] ++++ [3]
  
-- retorno : [3, 2, 1]
