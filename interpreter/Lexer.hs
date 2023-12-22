module Lexer where 

import Data.Char 

data Expr = BTrue
          | BFalse 
          | Num Int 
          | Null
          | IsNull Expr
          | Cons Expr Expr Expr
          | Head Expr
          | Tail Expr
          | Add Expr Expr 
          | Mult Expr Expr 
          | Sub Expr Expr 
          | And Expr Expr 
          | Or Expr Expr
          | Nand Expr Expr
          | Nor Expr Expr
          | Xor Expr Expr
          | Equal Expr Expr
          | Different Expr Expr
          | Greater Expr Expr
          | GreaterThan Expr Expr
          | Less Expr Expr
          | LessThan Expr Expr
          | If Expr Expr Expr 
          | Var String
          | Lam String Ty Expr 
          | App Expr Expr
          | Paren Expr
          | Let String Expr Expr 
          deriving Show

-- É usado no typechecker
data Ty = TBool 
        | TNum 
        | TNull 
        | TFun Ty Ty
        deriving (Show, Eq)

data Token = TokenTrue 
           | TokenFalse 
           | TokenNum Int 
           | TokenAdd
           | TokenSub
           | TokenMult
           | TokenAnd 
           | TokenIf 
           | TokenThen 
           | TokenElse
           | TokenVar String 
           | TokenLam
           | TokenOr   
           | TokenNand  
           | TokenNor
           | TokenXor
           | TokenEqual   
           | TokenDifferent   
           | TokenGreater   
           | TokenGreaterThan   
           | TokenLess   
           | TokenLessThan   
           | TokenArrow
           | TokenLParen
           | TokenRParen
           | TokenLet 
           | TokenEq 
           | TokenIn
           | TokenColon
           | TokenBoolean 
           | TokenNumber
           | TokenNull
           | TokenIsNull
           | TokenCons
           | TokenHead
           | TokenTail

           deriving (Show, Eq)

isSymb :: Char -> Bool 
isSymb c = c `elem` "+&|-!*\\->()=:</"

lexer :: String -> [Token]
lexer [] = [] 
lexer ('(':cs) = TokenLParen : lexer cs
lexer (')':cs) = TokenRParen : lexer cs
lexer (c:cs) | isSpace c = lexer cs 
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
                 ("*", rest)  -> TokenMult : lexer rest 
                 ("-", rest)  -> TokenSub : lexer rest 
                 ("&&", rest) -> TokenAnd : lexer rest 
                 ("\\", rest) -> TokenLam : lexer rest 
                 ("->", rest) -> TokenArrow : lexer rest 
                 ("=", rest)  -> TokenEq : lexer rest 
                 ("||", rest) -> TokenOr : lexer rest  
                 ("!&&", rest) -> TokenNand : lexer rest  
                 ("!||", rest) -> TokenNor : lexer rest  
                 ("!&|", rest) -> TokenXor : lexer rest  
                 ("==", rest)  -> TokenEqual :lexer rest  
                 ("/=", rest)  -> TokenDifferent :lexer rest  
                 (">", rest)  -> TokenGreater :lexer rest  
                 (">=", rest)  -> TokenGreaterThan :lexer rest  
                 ("<", rest)  -> TokenLess :lexer rest  
                 ("<=", rest)  -> TokenLessThan : lexer rest
                 (":", rest)  -> TokenColon : lexer rest 
                 _ -> error "Lexical error: invalid symbol!"

lexKW :: String -> [Token]
lexKW cs = case span isAlpha cs of 
             ("true", rest) -> TokenTrue : lexer rest 
             ("false", rest) -> TokenFalse : lexer rest
             ("if", rest) -> TokenIf : lexer rest 
             ("then", rest) -> TokenThen : lexer rest 
             ("else", rest) -> TokenElse : lexer rest 
             ("let", rest) -> TokenLet : lexer rest 
             ("in", rest) -> TokenIn : lexer rest 
             ("Num", rest) -> TokenNumber : lexer rest 
             ("Bool", rest) -> TokenBoolean : lexer rest 
             ("Cons", rest) -> TokenCons : lexer rest 
             ("IsNull", rest) -> TokenIsNull : lexer rest 
             ("Head", rest) -> TokenHead : lexer rest 
             ("Tail", rest) -> TokenTail : lexer rest 
             ("Null", rest) -> TokenNull : lexer rest 
             (var, rest) -> TokenVar var : lexer rest 
