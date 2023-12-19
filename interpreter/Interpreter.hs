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

step (If BFalse e1 e2) = e2
step (If BTrue e1 e2) = e1
step (If e e1 e2) = If (step e) e1 e2

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
subst x n (If e1 e2 e3) = If (subst x n e1) (subst x n e2) (subst x n e3)
subst x n (Paren e) = Paren (subst x n e)
subst x n (Let v e1 e2) = Let v (subst x n e1) (subst x n e2)
subst x n e = e 

-- eval( Add (Num 1) (Num 2))
eval :: Expr -> Expr
eval e | isValue e = e 
       | otherwise = eval (step e)
