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


lexer :: String -> [Token]
lexer [] = []
lexer ('(':cs) = TokenLParen : lexer cs
lexer (')':cs) = TokenRParen : lexer cs
lexer (c:cs) 
  | isSpace c = lexer cs
  | isDigit c = lexNum (c:cs)
  | isSymb c = lexSymbol (c:cs)
  | isAlpha c = lexKW (c:cs)
lexer _ = error "Lexical error!"

lexNum :: String -> [Token]
lexNum cs = case span isDigit cs of 
    (num, rest) -> TokenNum (read num) : lexer rest
    
    
lexSymbol :: String -> [Token]
lexSymbol cs = case span isSymb cs of 
  ("+", rest)  -> TokenAdd : lexer rest 
  ("&&", rest) -> TokenAnd : lexer rest 
  ("\\", rest) -> TokenLam : lexer rest 
  ("->", rest) -> TokenArrow : lexer rest 
  ("=", rest)  -> TokenEq : lexer rest 
  (":", rest)  -> TokenColon : lexer rest 
  _ -> error "Lexical error: invalid symbol!"