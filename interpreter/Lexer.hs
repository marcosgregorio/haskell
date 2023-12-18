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

  data Ty = TBool 
        | TNum 
        | TFun Ty Ty
        deriving (Show, Eq)

data Token = TokenTrue 
           | TokenFalse 
           | TokenNum Int 
           | TokenAdd
           | TokenAnd 
           | TokenIf 
           | TokenThen 
           | TokenElse
           | TokenVar String 
           | TokenLam
           | TokenArrow
           | TokenLParen
           | TokenRParen
           | TokenLet 
           | TokenEq 
           | TokenIn
           | TokenColon
           | TokenBoolean 
           | TokenNumber
           deriving (Show, Eq)
