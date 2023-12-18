{-# OPTIONS_GHC -w #-}
module Parser where

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,127) ([26400,16393,0,0,0,19263,0,0,0,51200,601,0,0,32,52800,18,128,0,32,46718,0,4096,23544,2,0,26400,16393,4814,0,0,0,29184,150,8192,12,0,45968,57348,6503,0,1,33792,1,0,0,64512,302,22984,2,64,26400,16393,4814,0,0,0,0,1552,0,0,128,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","num","'+'","\"&&\"","true","false","if","then","else","var","'\\\\'","\"->\"","'('","')'","'='","let","in","Bool","Num","':'","%eof"]
        bit_start = st * 25
        bit_end = (st + 1) * 25
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..24]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_2
action_0 (9) = happyShift action_4
action_0 (10) = happyShift action_5
action_0 (11) = happyShift action_6
action_0 (14) = happyShift action_7
action_0 (15) = happyShift action_8
action_0 (17) = happyShift action_9
action_0 (20) = happyShift action_10
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_2
action_3 (7) = happyShift action_16
action_3 (8) = happyShift action_17
action_3 (9) = happyShift action_4
action_3 (10) = happyShift action_5
action_3 (11) = happyShift action_6
action_3 (14) = happyShift action_7
action_3 (15) = happyShift action_8
action_3 (17) = happyShift action_9
action_3 (20) = happyShift action_10
action_3 (25) = happyAccept
action_3 (4) = happyGoto action_15
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 _ = happyReduce_3

action_6 (6) = happyShift action_2
action_6 (9) = happyShift action_4
action_6 (10) = happyShift action_5
action_6 (11) = happyShift action_6
action_6 (14) = happyShift action_7
action_6 (15) = happyShift action_8
action_6 (17) = happyShift action_9
action_6 (20) = happyShift action_10
action_6 (4) = happyGoto action_14
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_7

action_8 (14) = happyShift action_13
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (6) = happyShift action_2
action_9 (9) = happyShift action_4
action_9 (10) = happyShift action_5
action_9 (11) = happyShift action_6
action_9 (14) = happyShift action_7
action_9 (15) = happyShift action_8
action_9 (17) = happyShift action_9
action_9 (20) = happyShift action_10
action_9 (4) = happyGoto action_12
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (14) = happyShift action_11
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (19) = happyShift action_23
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_2
action_12 (7) = happyShift action_16
action_12 (8) = happyShift action_17
action_12 (9) = happyShift action_4
action_12 (10) = happyShift action_5
action_12 (11) = happyShift action_6
action_12 (14) = happyShift action_7
action_12 (15) = happyShift action_8
action_12 (17) = happyShift action_9
action_12 (18) = happyShift action_22
action_12 (20) = happyShift action_10
action_12 (4) = happyGoto action_15
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (24) = happyShift action_21
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (6) = happyShift action_2
action_14 (7) = happyShift action_16
action_14 (8) = happyShift action_17
action_14 (9) = happyShift action_4
action_14 (10) = happyShift action_5
action_14 (11) = happyShift action_6
action_14 (12) = happyShift action_20
action_14 (14) = happyShift action_7
action_14 (15) = happyShift action_8
action_14 (17) = happyShift action_9
action_14 (20) = happyShift action_10
action_14 (4) = happyGoto action_15
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (6) = happyShift action_2
action_15 (7) = happyShift action_16
action_15 (8) = happyShift action_17
action_15 (9) = happyShift action_4
action_15 (10) = happyShift action_5
action_15 (11) = happyShift action_6
action_15 (14) = happyShift action_7
action_15 (15) = happyShift action_8
action_15 (17) = happyShift action_9
action_15 (20) = happyShift action_10
action_15 (4) = happyGoto action_15
action_15 _ = happyReduce_9

action_16 (6) = happyShift action_2
action_16 (9) = happyShift action_4
action_16 (10) = happyShift action_5
action_16 (11) = happyShift action_6
action_16 (14) = happyShift action_7
action_16 (15) = happyShift action_8
action_16 (17) = happyShift action_9
action_16 (20) = happyShift action_10
action_16 (4) = happyGoto action_19
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (6) = happyShift action_2
action_17 (9) = happyShift action_4
action_17 (10) = happyShift action_5
action_17 (11) = happyShift action_6
action_17 (14) = happyShift action_7
action_17 (15) = happyShift action_8
action_17 (17) = happyShift action_9
action_17 (20) = happyShift action_10
action_17 (4) = happyGoto action_18
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (6) = happyShift action_2
action_18 (7) = happyShift action_16
action_18 (8) = happyShift action_17
action_18 (9) = happyShift action_4
action_18 (10) = happyShift action_5
action_18 (11) = happyShift action_6
action_18 (14) = happyShift action_7
action_18 (15) = happyShift action_8
action_18 (17) = happyShift action_9
action_18 (20) = happyShift action_10
action_18 (4) = happyGoto action_15
action_18 _ = happyReduce_5

action_19 (6) = happyShift action_2
action_19 (8) = happyShift action_17
action_19 (9) = happyShift action_4
action_19 (10) = happyShift action_5
action_19 (11) = happyShift action_6
action_19 (14) = happyShift action_7
action_19 (15) = happyShift action_8
action_19 (17) = happyShift action_9
action_19 (20) = happyShift action_10
action_19 (4) = happyGoto action_15
action_19 _ = happyReduce_4

action_20 (6) = happyShift action_2
action_20 (9) = happyShift action_4
action_20 (10) = happyShift action_5
action_20 (11) = happyShift action_6
action_20 (14) = happyShift action_7
action_20 (15) = happyShift action_8
action_20 (17) = happyShift action_9
action_20 (20) = happyShift action_10
action_20 (4) = happyGoto action_29
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (17) = happyShift action_26
action_21 (22) = happyShift action_27
action_21 (23) = happyShift action_28
action_21 (5) = happyGoto action_25
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_10

action_23 (6) = happyShift action_2
action_23 (9) = happyShift action_4
action_23 (10) = happyShift action_5
action_23 (11) = happyShift action_6
action_23 (14) = happyShift action_7
action_23 (15) = happyShift action_8
action_23 (17) = happyShift action_9
action_23 (20) = happyShift action_10
action_23 (4) = happyGoto action_24
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_2
action_24 (7) = happyShift action_16
action_24 (8) = happyShift action_17
action_24 (9) = happyShift action_4
action_24 (10) = happyShift action_5
action_24 (11) = happyShift action_6
action_24 (14) = happyShift action_7
action_24 (15) = happyShift action_8
action_24 (17) = happyShift action_9
action_24 (20) = happyShift action_10
action_24 (21) = happyShift action_33
action_24 (4) = happyGoto action_15
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (16) = happyShift action_32
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (17) = happyShift action_26
action_26 (22) = happyShift action_27
action_26 (23) = happyShift action_28
action_26 (5) = happyGoto action_31
action_26 _ = happyFail (happyExpListPerState 26)

action_27 _ = happyReduce_12

action_28 _ = happyReduce_13

action_29 (6) = happyShift action_2
action_29 (7) = happyShift action_16
action_29 (8) = happyShift action_17
action_29 (9) = happyShift action_4
action_29 (10) = happyShift action_5
action_29 (11) = happyShift action_6
action_29 (13) = happyShift action_30
action_29 (14) = happyShift action_7
action_29 (15) = happyShift action_8
action_29 (17) = happyShift action_9
action_29 (20) = happyShift action_10
action_29 (4) = happyGoto action_15
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (6) = happyShift action_2
action_30 (9) = happyShift action_4
action_30 (10) = happyShift action_5
action_30 (11) = happyShift action_6
action_30 (14) = happyShift action_7
action_30 (15) = happyShift action_8
action_30 (17) = happyShift action_9
action_30 (20) = happyShift action_10
action_30 (4) = happyGoto action_37
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (16) = happyShift action_36
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (6) = happyShift action_2
action_32 (9) = happyShift action_4
action_32 (10) = happyShift action_5
action_32 (11) = happyShift action_6
action_32 (14) = happyShift action_7
action_32 (15) = happyShift action_8
action_32 (17) = happyShift action_9
action_32 (20) = happyShift action_10
action_32 (4) = happyGoto action_35
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (6) = happyShift action_2
action_33 (9) = happyShift action_4
action_33 (10) = happyShift action_5
action_33 (11) = happyShift action_6
action_33 (14) = happyShift action_7
action_33 (15) = happyShift action_8
action_33 (17) = happyShift action_9
action_33 (20) = happyShift action_10
action_33 (4) = happyGoto action_34
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (6) = happyShift action_2
action_34 (7) = happyShift action_16
action_34 (8) = happyShift action_17
action_34 (9) = happyShift action_4
action_34 (10) = happyShift action_5
action_34 (11) = happyShift action_6
action_34 (14) = happyShift action_7
action_34 (15) = happyShift action_8
action_34 (17) = happyShift action_9
action_34 (20) = happyShift action_10
action_34 (4) = happyGoto action_15
action_34 _ = happyReduce_11

action_35 (6) = happyShift action_2
action_35 (7) = happyShift action_16
action_35 (8) = happyShift action_17
action_35 (9) = happyShift action_4
action_35 (10) = happyShift action_5
action_35 (11) = happyShift action_6
action_35 (14) = happyShift action_7
action_35 (15) = happyShift action_8
action_35 (17) = happyShift action_9
action_35 (20) = happyShift action_10
action_35 (4) = happyGoto action_15
action_35 _ = happyReduce_8

action_36 (17) = happyShift action_26
action_36 (22) = happyShift action_27
action_36 (23) = happyShift action_28
action_36 (5) = happyGoto action_38
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (6) = happyShift action_2
action_37 (7) = happyShift action_16
action_37 (8) = happyShift action_17
action_37 (9) = happyShift action_4
action_37 (10) = happyShift action_5
action_37 (11) = happyShift action_6
action_37 (14) = happyShift action_7
action_37 (15) = happyShift action_8
action_37 (17) = happyShift action_9
action_37 (20) = happyShift action_10
action_37 (4) = happyGoto action_15
action_37 _ = happyReduce_6

action_38 (18) = happyShift action_39
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_14

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happyReduce 6 4 happyReduction_6
happyReduction_6 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_7 = happySpecReduce_1  4 happyReduction_7
happyReduction_7 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happyReduce 6 4 happyReduction_8
happyReduction_8 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_9 = happySpecReduce_2  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happyReduce 6 4 happyReduction_11
happyReduction_11 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_1  5 happyReduction_12
happyReduction_12 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_13 = happySpecReduce_1  5 happyReduction_13
happyReduction_13 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_14 = happyReduce 5 5 happyReduction_14
happyReduction_14 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 25 25 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 6;
	TokenAdd -> cont 7;
	TokenAnd -> cont 8;
	TokenTrue -> cont 9;
	TokenFalse -> cont 10;
	TokenIf -> cont 11;
	TokenThen -> cont 12;
	TokenElse -> cont 13;
	TokenVar happy_dollar_dollar -> cont 14;
	TokenLam -> cont 15;
	TokenArrow -> cont 16;
	TokenLParen -> cont 17;
	TokenRParen -> cont 18;
	TokenEq -> cont 19;
	TokenLet -> cont 20;
	TokenIn -> cont 21;
	TokenBoolean -> cont 22;
	TokenNumber -> cont 23;
	TokenColon -> cont 24;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 25 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parserError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parserError :: [Token] -> a 
parserError _ = error "Syntax error!"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
