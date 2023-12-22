{
module Parser where

import Lexer 
}

%name parser 
%tokentype { Token }
%error { parserError } 

%left '+'

%token 
    num         { TokenNum $$ }
    '+'         { TokenAdd }
    '*'         { TokenMult }
    '-'         { TokenSub }
    "&&"        { TokenAnd }
    '||'        { TokenOr }
    '=='        { TokenEqual }
    '>'         { TokenGreater }
    '>='        { TokenGreaterThan }
    '<'         { TokenLess }
    '<='        { TokenLessThan }
    '!&&'       { TokenNand }  
    '!||'       { TokenNor }  
    '!&|'       { TokenXor }  
    true        { TokenTrue }
    false       { TokenFalse }
    if          { TokenIf }
    then        { TokenThen }
    else        { TokenElse }
    var         { TokenVar $$ }
    '\\'        { TokenLam }
    "->"        { TokenArrow }
    '('         { TokenLParen }
    ')'         { TokenRParen }
    '='         { TokenEq }
    let         { TokenLet }
    in          { TokenIn }
    Bool        { TokenBoolean }
    Num         { TokenNumber }
    ':'         { TokenColon }
    Cons        { TokenCons }
    IsNull      { TokenIsNull }
    Tail        { TokenTail }
    Head        { TokenHead }
    Null        { TokenNull }

%%

Exp         : num                           { Num $1 }
            | true                          { BTrue }
            | Null                          { Null }
            | false                         { BFalse }
            | Exp '+' Exp                   { Add $1 $3 }
            | Exp '*' Exp                   { Mult $1 $3 }
            | Exp '-' Exp                   { Sub $1 $3 }
            | Exp "&&" Exp                  { And $1 $3 }
            | Exp '==' Exp                  { Equal $1 $3 }
            | Exp '>' Exp                   { Greater $1 $3 }
            | Exp '>=' Exp                  { GreaterThan $1 $3 }
            | Exp '<' Exp                   { Less $1 $3 }
            | Exp '<=' Exp                  { LessThan $1 $3 }
            | Exp '!&&' Exp                 { Nand $1 $3 }
            | Exp '!||' Exp                 { Nor $1 $3 }
            | Exp '!&|' Exp                 { Xor $1 $3 }
            | if Exp then Exp else Exp      { If $2 $4 $6 }
            | Cons Exp Exp Exp              { Cons $2 $3 $4 }
            | IsNull Exp                    { IsNull $2 }
            | Tail Exp                      { Tail $2 }
            | Head Exp                      { Head $2 }
            | var                           { Var $1 }
            | '\\' var ':' Type "->" Exp    { Lam $2 $4 $6 }
            | Exp Exp                       { App $1 $2 }
            | '(' Exp ')'                   { Paren $2 }
            | let var '=' Exp in Exp        { Let $2 $4 $6 }

Type    : Bool                              { TBool }
        | Num                               { TNum }
        | '(' Type "->" Type ')'            { TFun $2 $4 }

{

parserError :: [Token] -> a 
parserError _ = error "Syntax error!"

}