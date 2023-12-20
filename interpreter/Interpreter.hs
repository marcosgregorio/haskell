module Interpreter where

import Lexer

isValue :: Expr -> Bool 
isValue BTrue = True 
isValue BFalse = True
isValue (Num _) = True 
isValue (Lam _ _ _) = True
isValue _ = False 

step:: Expr -> Expr
step (Add (Num n1) (Num n2)) = Num (n1 + n2)
step (Add (Num n) e) = Add (Num n) (step e)
step (Add e1 e2) = Add (step e1) e2

step (And BFalse _) = BFalse
step (And BTrue e) = e
step (And e1 e2) = And (step e1) e2

step (Or BTrue _) = BTrue                
step (Or _ BTrue) = BTrue                
step (Or BFalse BFalse) = BFalse         
step (Or e1 BFalse) = Or (step e1) BFalse
step (Or BFalse e2) = Or BFalse (step e2)
step (Or e1 e2) = Or (step e1) (step e2)

-- ~(A*B)
step (Nand BFalse _) = BTrue                                                  
step (Nand BTrue BFalse) = BTrue                                              
step (Nand BTrue BTrue) = BFalse                                              
step (Nand BTrue e) = Nand BTrue (step e)                                     
step (Nand e1 BFalse) = Nand (step e1) BFalse                                 
step (Nand e1 BTrue) = Nand (step e1) BTrue                                   
step (Nand e1 e2) = Nand (step e1) e2 

-- ~(A+B)
step (Nor BTrue _) = BFalse                                                   
step (Nor BFalse BFalse) = BTrue                                              
step (Nor BFalse BTrue) = BFalse                                              
step (Nor BFalse e) = Nor BFalse (step e)                                     
step (Nor e BFalse) = Nor (step e) BFalse                                     
step (Nor e BTrue) = Nor (step e) BTrue                                       
step (Nor e1 e2) = Nor (step e1) (step e2) 

step (Xor BFalse BFalse) = BFalse                                             
step (Xor BTrue BTrue) = BFalse                                               
step (Xor BFalse BTrue) = BTrue                                               
step (Xor BTrue BFalse) = BTrue                                               
step (Xor BTrue e) = Xor BTrue (step e)                                       
step (Xor BFalse e) = Xor BFalse (step e)                                     
step (Xor e BTrue) = Xor (step e) BTrue                                       
step (Xor e BFalse) = Xor (step e) BFalse                                     
step (Xor e1 e2) = Xor (step e1) (step e2) 

step (If BFalse e1 e2) = e2
step (If BTrue e1 e2) = e1
step (If e e1 e2) = If (step e) e1 e2

step (Equal (Num n1) (Num n2)) = if (n1 == n2)
                                    then 
                                      BTrue 
                                    else
                                      BFalse         
step (Equal e1 (Num n)) = Equal (step e1) (Num n)                             
step (Equal (Num n) e2) = Equal (Num n) (step e2)                             
step (Equal e1 e2) = Equal (step e1) (step e2)                                

step (Different (Num n1) (Num n2)) = if (n1 /= n2) 
                                        then 
                                          BTrue 
                                        else 
                                          BFalse     
step (Different e1 (Num n)) = Different (step e1) (Num n)                     
step (Different (Num n) e2) = Different (Num n) (step e2)                     
step (Different e1 e2) = Different (step e1) (step e2)                        

step (Greater e1 (Num n)) = Greater (step e1) (Num n)                             
step (Greater (Num n) e2) = Greater (Num n) (step e2)                             
step (Greater e1 e2) = Greater (step e1) (step e2)                                
step (GreaterThan (Num n1) (Num n2)) = if (n1 >= n2) 
                                        then 
                                          BTrue 
                                        else 
                                          BFalse    
step (GreaterThan e1 (Num n)) = GreaterThan (step e1) (Num n)                   
step (GreaterThan (Num n) e2) = GreaterThan (Num n) (step e2)                   
step (GreaterThan e1 e2) = GreaterThan (step e1) (step e2)                      

step (Less (Num n1) (Num n2)) = if (n1 < n2) 
                                  then 
                                    BTrue 
                                  else 
                                    BFalse          
step (Less e1 (Num n)) = Less (step e1) (Num n)                             
step (Less (Num n) e2) = Less (Num n) (step e2)                             
step (Less e1 e2) = Less (step e1) (step e2)                                

step (LessThan (Num n1) (Num n2)) = if (n1 <= n2) 
                                      then 
                                        BTrue 
                                      else 
                                        BFalse    
step (LessThan e1 (Num n)) = LessThan (step e1) (Num n)                   
step (LessThan (Num n) e2) = LessThan (Num n) (step e2)                   
step (LessThan e1 e2) = LessThan (step e1) (step e2)
-- se for um parenteses, ele devolve a
-- propria expressão dentro do parenteses
step (Paren e) = e

-- Esta função avalia se é uma expressão lambda e
-- se o e2 é um valor. Se o e2 for um valor, faz a substituição de e2
-- pela variavel x. Ex: (\x -> x + 1) 2. O valor 2 substituiria o 'x'.
-- Caso o contrario, a função irá reduzir ele até se tornar um valor.
step (App (Lam x t b) e2) | isValue e2 = subst x e2 b 
                        | otherwise = (App (Lam x t b) (step e2))
-- Apenas reduz a e1 até um valor.
step (App e1 e2) = App (step e1) e2
-- Cria uma variavel.
step (Let v e1 e2) | isValue e1 = subst v e1 e2 
                   | otherwise = Let v (step e1) e2
step e = error (show e)

-- Está função serve para pegar o valor de variaveis
-- e substituir com um valor novo.
subst :: String -> Expr -> Expr -> Expr 
subst x n (Var v) = if (x == v) then
                      n 
                    else 
                      (Var v)
subst x n (Lam v t b) = Lam v t (subst x n b)
subst x n (App e1 e2) = App (subst x n e1) (subst x n e2)
subst x n (Add e1 e2) = Add (subst x n e1) (subst x n e2)
subst x n (And e1 e2) = And (subst x n e1) (subst x n e2)
subst x n (Or e1 e2) = Or (subst x n e1) (subst x n e2)  
subst x n (If e1 e2 e3) = If (subst x n e1) (subst x n e2) (subst x n e3)
subst x n (Paren e) = Paren (subst x n e)
subst x n (Let v e1 e2) = Let v (subst x n e1) (subst x n e2)
subst x n e = e 

-- eval( Add (Num 1) (Num 2))
eval :: Expr -> Expr
eval e | isValue e = e 
       | otherwise = eval (step e)
