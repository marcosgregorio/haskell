module Lexer where

import Data.Char

data Expr = BTrue
            | BFalse
            | Num Int
            | Add Expr Expr
            | And Expr Expr
            | If Expr Expr Expr
            deriving Show

data Ty = TBool
        | TNum
        deriving (Show, Eq)

data Token = TokenTrue
            | TokenFalse
            | TokenNum Int
            | TokenAdd
            | TokenAnd
            | TokenIf
            | TokenThen
            | TokenElse
            deriving (Show, Eq)

isSymb :: Char -> Bool
isSymb c = c `elem` "+&"
