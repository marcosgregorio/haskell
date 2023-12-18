module Main where

import Lexer

main = getContents >>= print . lexer
