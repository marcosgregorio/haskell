module Lexer where

data Expr = BTrue
  | BFalse
  | Num Int
  | Add Expr Expr
  | And Expr Expr
  | If Expr Expr Expr
  | Var String
  | Lam String Expr
  | App Expr Expr
  deriving Show
