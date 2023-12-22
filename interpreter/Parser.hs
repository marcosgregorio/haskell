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
happyExpList = Happy_Data_Array.listArray (0,269) ([32,19256,16632,0,0,0,0,0,65503,49753,7,0,0,0,0,2048,52736,15890,0,0,0,0,1,64,38512,496,0,4,256,22976,1986,32770,33971,1039,26368,7945,8,4814,62,0,0,0,0,0,0,0,0,0,0,65503,49753,7,0,2,65404,2919,31,0,256,65008,9663,124,0,0,64,38512,33264,57344,57644,259,22976,1986,32770,33971,1039,26368,7945,8,4814,4158,39936,31781,32,19256,16632,28672,61590,129,11488,993,49153,49753,519,45952,3972,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,28672,61590,1,8192,12,0,0,512,45952,3972,0,0,0,0,0,65008,26015,124,0,4,0,4096,6,0,0,0,0,0,65470,33979,1039,26368,7945,0,256,4096,39936,31781,32,19256,248,0,0,0,0,0,0,6208,0,0,0,0,512,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","num","'+'","'*'","'-'","\"&&\"","'||'","'=='","'>'","'>='","'<'","'<='","'!&&'","'!||'","'!&|'","true","false","if","then","else","var","'\\\\'","\"->\"","'('","')'","'='","let","in","Bool","Num","':'","Cons","IsNull","Tail","Head","Null","%eof"]
        bit_start = st * 41
        bit_end = (st + 1) * 41
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..40]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_2
action_0 (20) = happyShift action_4
action_0 (21) = happyShift action_5
action_0 (22) = happyShift action_6
action_0 (25) = happyShift action_7
action_0 (26) = happyShift action_8
action_0 (28) = happyShift action_9
action_0 (31) = happyShift action_10
action_0 (36) = happyShift action_11
action_0 (37) = happyShift action_12
action_0 (38) = happyShift action_13
action_0 (39) = happyShift action_14
action_0 (40) = happyShift action_15
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_2
action_3 (7) = happyShift action_25
action_3 (8) = happyShift action_26
action_3 (9) = happyShift action_27
action_3 (10) = happyShift action_28
action_3 (12) = happyShift action_29
action_3 (13) = happyShift action_30
action_3 (14) = happyShift action_31
action_3 (15) = happyShift action_32
action_3 (16) = happyShift action_33
action_3 (17) = happyShift action_34
action_3 (18) = happyShift action_35
action_3 (19) = happyShift action_36
action_3 (20) = happyShift action_4
action_3 (21) = happyShift action_5
action_3 (22) = happyShift action_6
action_3 (25) = happyShift action_7
action_3 (26) = happyShift action_8
action_3 (28) = happyShift action_9
action_3 (31) = happyShift action_10
action_3 (36) = happyShift action_11
action_3 (37) = happyShift action_12
action_3 (38) = happyShift action_13
action_3 (39) = happyShift action_14
action_3 (40) = happyShift action_15
action_3 (41) = happyAccept
action_3 (4) = happyGoto action_24
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 _ = happyReduce_4

action_6 (6) = happyShift action_2
action_6 (20) = happyShift action_4
action_6 (21) = happyShift action_5
action_6 (22) = happyShift action_6
action_6 (25) = happyShift action_7
action_6 (26) = happyShift action_8
action_6 (28) = happyShift action_9
action_6 (31) = happyShift action_10
action_6 (36) = happyShift action_11
action_6 (37) = happyShift action_12
action_6 (38) = happyShift action_13
action_6 (39) = happyShift action_14
action_6 (40) = happyShift action_15
action_6 (4) = happyGoto action_23
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_22

action_8 (25) = happyShift action_22
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (6) = happyShift action_2
action_9 (20) = happyShift action_4
action_9 (21) = happyShift action_5
action_9 (22) = happyShift action_6
action_9 (25) = happyShift action_7
action_9 (26) = happyShift action_8
action_9 (28) = happyShift action_9
action_9 (31) = happyShift action_10
action_9 (36) = happyShift action_11
action_9 (37) = happyShift action_12
action_9 (38) = happyShift action_13
action_9 (39) = happyShift action_14
action_9 (40) = happyShift action_15
action_9 (4) = happyGoto action_21
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (25) = happyShift action_20
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (6) = happyShift action_2
action_11 (20) = happyShift action_4
action_11 (21) = happyShift action_5
action_11 (22) = happyShift action_6
action_11 (25) = happyShift action_7
action_11 (26) = happyShift action_8
action_11 (28) = happyShift action_9
action_11 (31) = happyShift action_10
action_11 (36) = happyShift action_11
action_11 (37) = happyShift action_12
action_11 (38) = happyShift action_13
action_11 (39) = happyShift action_14
action_11 (40) = happyShift action_15
action_11 (4) = happyGoto action_19
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_2
action_12 (20) = happyShift action_4
action_12 (21) = happyShift action_5
action_12 (22) = happyShift action_6
action_12 (25) = happyShift action_7
action_12 (26) = happyShift action_8
action_12 (28) = happyShift action_9
action_12 (31) = happyShift action_10
action_12 (36) = happyShift action_11
action_12 (37) = happyShift action_12
action_12 (38) = happyShift action_13
action_12 (39) = happyShift action_14
action_12 (40) = happyShift action_15
action_12 (4) = happyGoto action_18
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (6) = happyShift action_2
action_13 (20) = happyShift action_4
action_13 (21) = happyShift action_5
action_13 (22) = happyShift action_6
action_13 (25) = happyShift action_7
action_13 (26) = happyShift action_8
action_13 (28) = happyShift action_9
action_13 (31) = happyShift action_10
action_13 (36) = happyShift action_11
action_13 (37) = happyShift action_12
action_13 (38) = happyShift action_13
action_13 (39) = happyShift action_14
action_13 (40) = happyShift action_15
action_13 (4) = happyGoto action_17
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (6) = happyShift action_2
action_14 (20) = happyShift action_4
action_14 (21) = happyShift action_5
action_14 (22) = happyShift action_6
action_14 (25) = happyShift action_7
action_14 (26) = happyShift action_8
action_14 (28) = happyShift action_9
action_14 (31) = happyShift action_10
action_14 (36) = happyShift action_11
action_14 (37) = happyShift action_12
action_14 (38) = happyShift action_13
action_14 (39) = happyShift action_14
action_14 (40) = happyShift action_15
action_14 (4) = happyGoto action_16
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_3

action_16 (6) = happyShift action_2
action_16 (7) = happyShift action_25
action_16 (8) = happyShift action_26
action_16 (9) = happyShift action_27
action_16 (10) = happyShift action_28
action_16 (12) = happyShift action_29
action_16 (13) = happyShift action_30
action_16 (14) = happyShift action_31
action_16 (15) = happyShift action_32
action_16 (16) = happyShift action_33
action_16 (17) = happyShift action_34
action_16 (18) = happyShift action_35
action_16 (19) = happyShift action_36
action_16 (20) = happyShift action_4
action_16 (21) = happyShift action_5
action_16 (22) = happyShift action_6
action_16 (25) = happyShift action_7
action_16 (26) = happyShift action_8
action_16 (28) = happyShift action_9
action_16 (31) = happyShift action_10
action_16 (36) = happyShift action_11
action_16 (37) = happyShift action_12
action_16 (38) = happyShift action_13
action_16 (39) = happyShift action_14
action_16 (40) = happyShift action_15
action_16 (4) = happyGoto action_24
action_16 _ = happyReduce_21

action_17 (6) = happyShift action_2
action_17 (7) = happyShift action_25
action_17 (8) = happyShift action_26
action_17 (9) = happyShift action_27
action_17 (10) = happyShift action_28
action_17 (12) = happyShift action_29
action_17 (13) = happyShift action_30
action_17 (14) = happyShift action_31
action_17 (15) = happyShift action_32
action_17 (16) = happyShift action_33
action_17 (17) = happyShift action_34
action_17 (18) = happyShift action_35
action_17 (19) = happyShift action_36
action_17 (20) = happyShift action_4
action_17 (21) = happyShift action_5
action_17 (22) = happyShift action_6
action_17 (25) = happyShift action_7
action_17 (26) = happyShift action_8
action_17 (28) = happyShift action_9
action_17 (31) = happyShift action_10
action_17 (36) = happyShift action_11
action_17 (37) = happyShift action_12
action_17 (38) = happyShift action_13
action_17 (39) = happyShift action_14
action_17 (40) = happyShift action_15
action_17 (4) = happyGoto action_24
action_17 _ = happyReduce_20

action_18 (6) = happyShift action_2
action_18 (7) = happyShift action_25
action_18 (8) = happyShift action_26
action_18 (9) = happyShift action_27
action_18 (10) = happyShift action_28
action_18 (12) = happyShift action_29
action_18 (13) = happyShift action_30
action_18 (14) = happyShift action_31
action_18 (15) = happyShift action_32
action_18 (16) = happyShift action_33
action_18 (17) = happyShift action_34
action_18 (18) = happyShift action_35
action_18 (19) = happyShift action_36
action_18 (20) = happyShift action_4
action_18 (21) = happyShift action_5
action_18 (22) = happyShift action_6
action_18 (25) = happyShift action_7
action_18 (26) = happyShift action_8
action_18 (28) = happyShift action_9
action_18 (31) = happyShift action_10
action_18 (36) = happyShift action_11
action_18 (37) = happyShift action_12
action_18 (38) = happyShift action_13
action_18 (39) = happyShift action_14
action_18 (40) = happyShift action_15
action_18 (4) = happyGoto action_24
action_18 _ = happyReduce_19

action_19 (6) = happyShift action_2
action_19 (7) = happyShift action_25
action_19 (8) = happyShift action_26
action_19 (9) = happyShift action_27
action_19 (10) = happyShift action_28
action_19 (12) = happyShift action_29
action_19 (13) = happyShift action_30
action_19 (14) = happyShift action_31
action_19 (15) = happyShift action_32
action_19 (16) = happyShift action_33
action_19 (17) = happyShift action_34
action_19 (18) = happyShift action_35
action_19 (19) = happyShift action_36
action_19 (20) = happyShift action_4
action_19 (21) = happyShift action_5
action_19 (22) = happyShift action_6
action_19 (25) = happyShift action_7
action_19 (26) = happyShift action_8
action_19 (28) = happyShift action_9
action_19 (31) = happyShift action_10
action_19 (36) = happyShift action_11
action_19 (37) = happyShift action_12
action_19 (38) = happyShift action_13
action_19 (39) = happyShift action_14
action_19 (40) = happyShift action_15
action_19 (4) = happyGoto action_53
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (30) = happyShift action_52
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_2
action_21 (7) = happyShift action_25
action_21 (8) = happyShift action_26
action_21 (9) = happyShift action_27
action_21 (10) = happyShift action_28
action_21 (12) = happyShift action_29
action_21 (13) = happyShift action_30
action_21 (14) = happyShift action_31
action_21 (15) = happyShift action_32
action_21 (16) = happyShift action_33
action_21 (17) = happyShift action_34
action_21 (18) = happyShift action_35
action_21 (19) = happyShift action_36
action_21 (20) = happyShift action_4
action_21 (21) = happyShift action_5
action_21 (22) = happyShift action_6
action_21 (25) = happyShift action_7
action_21 (26) = happyShift action_8
action_21 (28) = happyShift action_9
action_21 (29) = happyShift action_51
action_21 (31) = happyShift action_10
action_21 (36) = happyShift action_11
action_21 (37) = happyShift action_12
action_21 (38) = happyShift action_13
action_21 (39) = happyShift action_14
action_21 (40) = happyShift action_15
action_21 (4) = happyGoto action_24
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (35) = happyShift action_50
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_2
action_23 (7) = happyShift action_25
action_23 (8) = happyShift action_26
action_23 (9) = happyShift action_27
action_23 (10) = happyShift action_28
action_23 (12) = happyShift action_29
action_23 (13) = happyShift action_30
action_23 (14) = happyShift action_31
action_23 (15) = happyShift action_32
action_23 (16) = happyShift action_33
action_23 (17) = happyShift action_34
action_23 (18) = happyShift action_35
action_23 (19) = happyShift action_36
action_23 (20) = happyShift action_4
action_23 (21) = happyShift action_5
action_23 (22) = happyShift action_6
action_23 (23) = happyShift action_49
action_23 (25) = happyShift action_7
action_23 (26) = happyShift action_8
action_23 (28) = happyShift action_9
action_23 (31) = happyShift action_10
action_23 (36) = happyShift action_11
action_23 (37) = happyShift action_12
action_23 (38) = happyShift action_13
action_23 (39) = happyShift action_14
action_23 (40) = happyShift action_15
action_23 (4) = happyGoto action_24
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_2
action_24 (7) = happyShift action_25
action_24 (8) = happyShift action_26
action_24 (9) = happyShift action_27
action_24 (10) = happyShift action_28
action_24 (12) = happyShift action_29
action_24 (13) = happyShift action_30
action_24 (14) = happyShift action_31
action_24 (15) = happyShift action_32
action_24 (16) = happyShift action_33
action_24 (17) = happyShift action_34
action_24 (18) = happyShift action_35
action_24 (19) = happyShift action_36
action_24 (20) = happyShift action_4
action_24 (21) = happyShift action_5
action_24 (22) = happyShift action_6
action_24 (25) = happyShift action_7
action_24 (26) = happyShift action_8
action_24 (28) = happyShift action_9
action_24 (31) = happyShift action_10
action_24 (36) = happyShift action_11
action_24 (37) = happyShift action_12
action_24 (38) = happyShift action_13
action_24 (39) = happyShift action_14
action_24 (40) = happyShift action_15
action_24 (4) = happyGoto action_24
action_24 _ = happyReduce_24

action_25 (6) = happyShift action_2
action_25 (20) = happyShift action_4
action_25 (21) = happyShift action_5
action_25 (22) = happyShift action_6
action_25 (25) = happyShift action_7
action_25 (26) = happyShift action_8
action_25 (28) = happyShift action_9
action_25 (31) = happyShift action_10
action_25 (36) = happyShift action_11
action_25 (37) = happyShift action_12
action_25 (38) = happyShift action_13
action_25 (39) = happyShift action_14
action_25 (40) = happyShift action_15
action_25 (4) = happyGoto action_48
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (6) = happyShift action_2
action_26 (20) = happyShift action_4
action_26 (21) = happyShift action_5
action_26 (22) = happyShift action_6
action_26 (25) = happyShift action_7
action_26 (26) = happyShift action_8
action_26 (28) = happyShift action_9
action_26 (31) = happyShift action_10
action_26 (36) = happyShift action_11
action_26 (37) = happyShift action_12
action_26 (38) = happyShift action_13
action_26 (39) = happyShift action_14
action_26 (40) = happyShift action_15
action_26 (4) = happyGoto action_47
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (6) = happyShift action_2
action_27 (20) = happyShift action_4
action_27 (21) = happyShift action_5
action_27 (22) = happyShift action_6
action_27 (25) = happyShift action_7
action_27 (26) = happyShift action_8
action_27 (28) = happyShift action_9
action_27 (31) = happyShift action_10
action_27 (36) = happyShift action_11
action_27 (37) = happyShift action_12
action_27 (38) = happyShift action_13
action_27 (39) = happyShift action_14
action_27 (40) = happyShift action_15
action_27 (4) = happyGoto action_46
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (6) = happyShift action_2
action_28 (20) = happyShift action_4
action_28 (21) = happyShift action_5
action_28 (22) = happyShift action_6
action_28 (25) = happyShift action_7
action_28 (26) = happyShift action_8
action_28 (28) = happyShift action_9
action_28 (31) = happyShift action_10
action_28 (36) = happyShift action_11
action_28 (37) = happyShift action_12
action_28 (38) = happyShift action_13
action_28 (39) = happyShift action_14
action_28 (40) = happyShift action_15
action_28 (4) = happyGoto action_45
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (6) = happyShift action_2
action_29 (20) = happyShift action_4
action_29 (21) = happyShift action_5
action_29 (22) = happyShift action_6
action_29 (25) = happyShift action_7
action_29 (26) = happyShift action_8
action_29 (28) = happyShift action_9
action_29 (31) = happyShift action_10
action_29 (36) = happyShift action_11
action_29 (37) = happyShift action_12
action_29 (38) = happyShift action_13
action_29 (39) = happyShift action_14
action_29 (40) = happyShift action_15
action_29 (4) = happyGoto action_44
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (6) = happyShift action_2
action_30 (20) = happyShift action_4
action_30 (21) = happyShift action_5
action_30 (22) = happyShift action_6
action_30 (25) = happyShift action_7
action_30 (26) = happyShift action_8
action_30 (28) = happyShift action_9
action_30 (31) = happyShift action_10
action_30 (36) = happyShift action_11
action_30 (37) = happyShift action_12
action_30 (38) = happyShift action_13
action_30 (39) = happyShift action_14
action_30 (40) = happyShift action_15
action_30 (4) = happyGoto action_43
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (6) = happyShift action_2
action_31 (20) = happyShift action_4
action_31 (21) = happyShift action_5
action_31 (22) = happyShift action_6
action_31 (25) = happyShift action_7
action_31 (26) = happyShift action_8
action_31 (28) = happyShift action_9
action_31 (31) = happyShift action_10
action_31 (36) = happyShift action_11
action_31 (37) = happyShift action_12
action_31 (38) = happyShift action_13
action_31 (39) = happyShift action_14
action_31 (40) = happyShift action_15
action_31 (4) = happyGoto action_42
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (6) = happyShift action_2
action_32 (20) = happyShift action_4
action_32 (21) = happyShift action_5
action_32 (22) = happyShift action_6
action_32 (25) = happyShift action_7
action_32 (26) = happyShift action_8
action_32 (28) = happyShift action_9
action_32 (31) = happyShift action_10
action_32 (36) = happyShift action_11
action_32 (37) = happyShift action_12
action_32 (38) = happyShift action_13
action_32 (39) = happyShift action_14
action_32 (40) = happyShift action_15
action_32 (4) = happyGoto action_41
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (6) = happyShift action_2
action_33 (20) = happyShift action_4
action_33 (21) = happyShift action_5
action_33 (22) = happyShift action_6
action_33 (25) = happyShift action_7
action_33 (26) = happyShift action_8
action_33 (28) = happyShift action_9
action_33 (31) = happyShift action_10
action_33 (36) = happyShift action_11
action_33 (37) = happyShift action_12
action_33 (38) = happyShift action_13
action_33 (39) = happyShift action_14
action_33 (40) = happyShift action_15
action_33 (4) = happyGoto action_40
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (6) = happyShift action_2
action_34 (20) = happyShift action_4
action_34 (21) = happyShift action_5
action_34 (22) = happyShift action_6
action_34 (25) = happyShift action_7
action_34 (26) = happyShift action_8
action_34 (28) = happyShift action_9
action_34 (31) = happyShift action_10
action_34 (36) = happyShift action_11
action_34 (37) = happyShift action_12
action_34 (38) = happyShift action_13
action_34 (39) = happyShift action_14
action_34 (40) = happyShift action_15
action_34 (4) = happyGoto action_39
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (6) = happyShift action_2
action_35 (20) = happyShift action_4
action_35 (21) = happyShift action_5
action_35 (22) = happyShift action_6
action_35 (25) = happyShift action_7
action_35 (26) = happyShift action_8
action_35 (28) = happyShift action_9
action_35 (31) = happyShift action_10
action_35 (36) = happyShift action_11
action_35 (37) = happyShift action_12
action_35 (38) = happyShift action_13
action_35 (39) = happyShift action_14
action_35 (40) = happyShift action_15
action_35 (4) = happyGoto action_38
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (6) = happyShift action_2
action_36 (20) = happyShift action_4
action_36 (21) = happyShift action_5
action_36 (22) = happyShift action_6
action_36 (25) = happyShift action_7
action_36 (26) = happyShift action_8
action_36 (28) = happyShift action_9
action_36 (31) = happyShift action_10
action_36 (36) = happyShift action_11
action_36 (37) = happyShift action_12
action_36 (38) = happyShift action_13
action_36 (39) = happyShift action_14
action_36 (40) = happyShift action_15
action_36 (4) = happyGoto action_37
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (6) = happyShift action_2
action_37 (7) = happyShift action_25
action_37 (8) = happyShift action_26
action_37 (9) = happyShift action_27
action_37 (10) = happyShift action_28
action_37 (12) = happyShift action_29
action_37 (13) = happyShift action_30
action_37 (14) = happyShift action_31
action_37 (15) = happyShift action_32
action_37 (16) = happyShift action_33
action_37 (17) = happyShift action_34
action_37 (18) = happyShift action_35
action_37 (19) = happyShift action_36
action_37 (20) = happyShift action_4
action_37 (21) = happyShift action_5
action_37 (22) = happyShift action_6
action_37 (25) = happyShift action_7
action_37 (26) = happyShift action_8
action_37 (28) = happyShift action_9
action_37 (31) = happyShift action_10
action_37 (36) = happyShift action_11
action_37 (37) = happyShift action_12
action_37 (38) = happyShift action_13
action_37 (39) = happyShift action_14
action_37 (40) = happyShift action_15
action_37 (4) = happyGoto action_24
action_37 _ = happyReduce_16

action_38 (6) = happyShift action_2
action_38 (7) = happyShift action_25
action_38 (8) = happyShift action_26
action_38 (9) = happyShift action_27
action_38 (10) = happyShift action_28
action_38 (12) = happyShift action_29
action_38 (13) = happyShift action_30
action_38 (14) = happyShift action_31
action_38 (15) = happyShift action_32
action_38 (16) = happyShift action_33
action_38 (17) = happyShift action_34
action_38 (18) = happyShift action_35
action_38 (19) = happyShift action_36
action_38 (20) = happyShift action_4
action_38 (21) = happyShift action_5
action_38 (22) = happyShift action_6
action_38 (25) = happyShift action_7
action_38 (26) = happyShift action_8
action_38 (28) = happyShift action_9
action_38 (31) = happyShift action_10
action_38 (36) = happyShift action_11
action_38 (37) = happyShift action_12
action_38 (38) = happyShift action_13
action_38 (39) = happyShift action_14
action_38 (40) = happyShift action_15
action_38 (4) = happyGoto action_24
action_38 _ = happyReduce_15

action_39 (6) = happyShift action_2
action_39 (7) = happyShift action_25
action_39 (8) = happyShift action_26
action_39 (9) = happyShift action_27
action_39 (10) = happyShift action_28
action_39 (12) = happyShift action_29
action_39 (13) = happyShift action_30
action_39 (14) = happyShift action_31
action_39 (15) = happyShift action_32
action_39 (16) = happyShift action_33
action_39 (17) = happyShift action_34
action_39 (18) = happyShift action_35
action_39 (19) = happyShift action_36
action_39 (20) = happyShift action_4
action_39 (21) = happyShift action_5
action_39 (22) = happyShift action_6
action_39 (25) = happyShift action_7
action_39 (26) = happyShift action_8
action_39 (28) = happyShift action_9
action_39 (31) = happyShift action_10
action_39 (36) = happyShift action_11
action_39 (37) = happyShift action_12
action_39 (38) = happyShift action_13
action_39 (39) = happyShift action_14
action_39 (40) = happyShift action_15
action_39 (4) = happyGoto action_24
action_39 _ = happyReduce_14

action_40 (6) = happyShift action_2
action_40 (7) = happyShift action_25
action_40 (8) = happyShift action_26
action_40 (9) = happyShift action_27
action_40 (10) = happyShift action_28
action_40 (12) = happyShift action_29
action_40 (13) = happyShift action_30
action_40 (14) = happyShift action_31
action_40 (15) = happyShift action_32
action_40 (16) = happyShift action_33
action_40 (17) = happyShift action_34
action_40 (18) = happyShift action_35
action_40 (19) = happyShift action_36
action_40 (20) = happyShift action_4
action_40 (21) = happyShift action_5
action_40 (22) = happyShift action_6
action_40 (25) = happyShift action_7
action_40 (26) = happyShift action_8
action_40 (28) = happyShift action_9
action_40 (31) = happyShift action_10
action_40 (36) = happyShift action_11
action_40 (37) = happyShift action_12
action_40 (38) = happyShift action_13
action_40 (39) = happyShift action_14
action_40 (40) = happyShift action_15
action_40 (4) = happyGoto action_24
action_40 _ = happyReduce_13

action_41 (6) = happyShift action_2
action_41 (7) = happyShift action_25
action_41 (8) = happyShift action_26
action_41 (9) = happyShift action_27
action_41 (10) = happyShift action_28
action_41 (12) = happyShift action_29
action_41 (13) = happyShift action_30
action_41 (14) = happyShift action_31
action_41 (15) = happyShift action_32
action_41 (16) = happyShift action_33
action_41 (17) = happyShift action_34
action_41 (18) = happyShift action_35
action_41 (19) = happyShift action_36
action_41 (20) = happyShift action_4
action_41 (21) = happyShift action_5
action_41 (22) = happyShift action_6
action_41 (25) = happyShift action_7
action_41 (26) = happyShift action_8
action_41 (28) = happyShift action_9
action_41 (31) = happyShift action_10
action_41 (36) = happyShift action_11
action_41 (37) = happyShift action_12
action_41 (38) = happyShift action_13
action_41 (39) = happyShift action_14
action_41 (40) = happyShift action_15
action_41 (4) = happyGoto action_24
action_41 _ = happyReduce_12

action_42 (6) = happyShift action_2
action_42 (7) = happyShift action_25
action_42 (8) = happyShift action_26
action_42 (9) = happyShift action_27
action_42 (10) = happyShift action_28
action_42 (12) = happyShift action_29
action_42 (13) = happyShift action_30
action_42 (14) = happyShift action_31
action_42 (15) = happyShift action_32
action_42 (16) = happyShift action_33
action_42 (17) = happyShift action_34
action_42 (18) = happyShift action_35
action_42 (19) = happyShift action_36
action_42 (20) = happyShift action_4
action_42 (21) = happyShift action_5
action_42 (22) = happyShift action_6
action_42 (25) = happyShift action_7
action_42 (26) = happyShift action_8
action_42 (28) = happyShift action_9
action_42 (31) = happyShift action_10
action_42 (36) = happyShift action_11
action_42 (37) = happyShift action_12
action_42 (38) = happyShift action_13
action_42 (39) = happyShift action_14
action_42 (40) = happyShift action_15
action_42 (4) = happyGoto action_24
action_42 _ = happyReduce_11

action_43 (6) = happyShift action_2
action_43 (7) = happyShift action_25
action_43 (8) = happyShift action_26
action_43 (9) = happyShift action_27
action_43 (10) = happyShift action_28
action_43 (12) = happyShift action_29
action_43 (13) = happyShift action_30
action_43 (14) = happyShift action_31
action_43 (15) = happyShift action_32
action_43 (16) = happyShift action_33
action_43 (17) = happyShift action_34
action_43 (18) = happyShift action_35
action_43 (19) = happyShift action_36
action_43 (20) = happyShift action_4
action_43 (21) = happyShift action_5
action_43 (22) = happyShift action_6
action_43 (25) = happyShift action_7
action_43 (26) = happyShift action_8
action_43 (28) = happyShift action_9
action_43 (31) = happyShift action_10
action_43 (36) = happyShift action_11
action_43 (37) = happyShift action_12
action_43 (38) = happyShift action_13
action_43 (39) = happyShift action_14
action_43 (40) = happyShift action_15
action_43 (4) = happyGoto action_24
action_43 _ = happyReduce_10

action_44 (6) = happyShift action_2
action_44 (7) = happyShift action_25
action_44 (8) = happyShift action_26
action_44 (9) = happyShift action_27
action_44 (10) = happyShift action_28
action_44 (12) = happyShift action_29
action_44 (13) = happyShift action_30
action_44 (14) = happyShift action_31
action_44 (15) = happyShift action_32
action_44 (16) = happyShift action_33
action_44 (17) = happyShift action_34
action_44 (18) = happyShift action_35
action_44 (19) = happyShift action_36
action_44 (20) = happyShift action_4
action_44 (21) = happyShift action_5
action_44 (22) = happyShift action_6
action_44 (25) = happyShift action_7
action_44 (26) = happyShift action_8
action_44 (28) = happyShift action_9
action_44 (31) = happyShift action_10
action_44 (36) = happyShift action_11
action_44 (37) = happyShift action_12
action_44 (38) = happyShift action_13
action_44 (39) = happyShift action_14
action_44 (40) = happyShift action_15
action_44 (4) = happyGoto action_24
action_44 _ = happyReduce_9

action_45 (6) = happyShift action_2
action_45 (7) = happyShift action_25
action_45 (8) = happyShift action_26
action_45 (9) = happyShift action_27
action_45 (10) = happyShift action_28
action_45 (12) = happyShift action_29
action_45 (13) = happyShift action_30
action_45 (14) = happyShift action_31
action_45 (15) = happyShift action_32
action_45 (16) = happyShift action_33
action_45 (17) = happyShift action_34
action_45 (18) = happyShift action_35
action_45 (19) = happyShift action_36
action_45 (20) = happyShift action_4
action_45 (21) = happyShift action_5
action_45 (22) = happyShift action_6
action_45 (25) = happyShift action_7
action_45 (26) = happyShift action_8
action_45 (28) = happyShift action_9
action_45 (31) = happyShift action_10
action_45 (36) = happyShift action_11
action_45 (37) = happyShift action_12
action_45 (38) = happyShift action_13
action_45 (39) = happyShift action_14
action_45 (40) = happyShift action_15
action_45 (4) = happyGoto action_24
action_45 _ = happyReduce_8

action_46 (6) = happyShift action_2
action_46 (7) = happyShift action_25
action_46 (8) = happyShift action_26
action_46 (9) = happyShift action_27
action_46 (10) = happyShift action_28
action_46 (12) = happyShift action_29
action_46 (13) = happyShift action_30
action_46 (14) = happyShift action_31
action_46 (15) = happyShift action_32
action_46 (16) = happyShift action_33
action_46 (17) = happyShift action_34
action_46 (18) = happyShift action_35
action_46 (19) = happyShift action_36
action_46 (20) = happyShift action_4
action_46 (21) = happyShift action_5
action_46 (22) = happyShift action_6
action_46 (25) = happyShift action_7
action_46 (26) = happyShift action_8
action_46 (28) = happyShift action_9
action_46 (31) = happyShift action_10
action_46 (36) = happyShift action_11
action_46 (37) = happyShift action_12
action_46 (38) = happyShift action_13
action_46 (39) = happyShift action_14
action_46 (40) = happyShift action_15
action_46 (4) = happyGoto action_24
action_46 _ = happyReduce_7

action_47 (6) = happyShift action_2
action_47 (7) = happyShift action_25
action_47 (8) = happyShift action_26
action_47 (9) = happyShift action_27
action_47 (10) = happyShift action_28
action_47 (12) = happyShift action_29
action_47 (13) = happyShift action_30
action_47 (14) = happyShift action_31
action_47 (15) = happyShift action_32
action_47 (16) = happyShift action_33
action_47 (17) = happyShift action_34
action_47 (18) = happyShift action_35
action_47 (19) = happyShift action_36
action_47 (20) = happyShift action_4
action_47 (21) = happyShift action_5
action_47 (22) = happyShift action_6
action_47 (25) = happyShift action_7
action_47 (26) = happyShift action_8
action_47 (28) = happyShift action_9
action_47 (31) = happyShift action_10
action_47 (36) = happyShift action_11
action_47 (37) = happyShift action_12
action_47 (38) = happyShift action_13
action_47 (39) = happyShift action_14
action_47 (40) = happyShift action_15
action_47 (4) = happyGoto action_24
action_47 _ = happyReduce_6

action_48 (6) = happyShift action_2
action_48 (8) = happyShift action_26
action_48 (9) = happyShift action_27
action_48 (10) = happyShift action_28
action_48 (12) = happyShift action_29
action_48 (13) = happyShift action_30
action_48 (14) = happyShift action_31
action_48 (15) = happyShift action_32
action_48 (16) = happyShift action_33
action_48 (17) = happyShift action_34
action_48 (18) = happyShift action_35
action_48 (19) = happyShift action_36
action_48 (20) = happyShift action_4
action_48 (21) = happyShift action_5
action_48 (22) = happyShift action_6
action_48 (25) = happyShift action_7
action_48 (26) = happyShift action_8
action_48 (28) = happyShift action_9
action_48 (31) = happyShift action_10
action_48 (36) = happyShift action_11
action_48 (37) = happyShift action_12
action_48 (38) = happyShift action_13
action_48 (39) = happyShift action_14
action_48 (40) = happyShift action_15
action_48 (4) = happyGoto action_24
action_48 _ = happyReduce_5

action_49 (6) = happyShift action_2
action_49 (20) = happyShift action_4
action_49 (21) = happyShift action_5
action_49 (22) = happyShift action_6
action_49 (25) = happyShift action_7
action_49 (26) = happyShift action_8
action_49 (28) = happyShift action_9
action_49 (31) = happyShift action_10
action_49 (36) = happyShift action_11
action_49 (37) = happyShift action_12
action_49 (38) = happyShift action_13
action_49 (39) = happyShift action_14
action_49 (40) = happyShift action_15
action_49 (4) = happyGoto action_60
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (28) = happyShift action_57
action_50 (33) = happyShift action_58
action_50 (34) = happyShift action_59
action_50 (5) = happyGoto action_56
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_25

action_52 (6) = happyShift action_2
action_52 (20) = happyShift action_4
action_52 (21) = happyShift action_5
action_52 (22) = happyShift action_6
action_52 (25) = happyShift action_7
action_52 (26) = happyShift action_8
action_52 (28) = happyShift action_9
action_52 (31) = happyShift action_10
action_52 (36) = happyShift action_11
action_52 (37) = happyShift action_12
action_52 (38) = happyShift action_13
action_52 (39) = happyShift action_14
action_52 (40) = happyShift action_15
action_52 (4) = happyGoto action_55
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (6) = happyShift action_2
action_53 (7) = happyShift action_25
action_53 (8) = happyShift action_26
action_53 (9) = happyShift action_27
action_53 (10) = happyShift action_28
action_53 (12) = happyShift action_29
action_53 (13) = happyShift action_30
action_53 (14) = happyShift action_31
action_53 (15) = happyShift action_32
action_53 (16) = happyShift action_33
action_53 (17) = happyShift action_34
action_53 (18) = happyShift action_35
action_53 (19) = happyShift action_36
action_53 (20) = happyShift action_4
action_53 (21) = happyShift action_5
action_53 (22) = happyShift action_6
action_53 (25) = happyShift action_7
action_53 (26) = happyShift action_8
action_53 (28) = happyShift action_9
action_53 (31) = happyShift action_10
action_53 (36) = happyShift action_11
action_53 (37) = happyShift action_12
action_53 (38) = happyShift action_13
action_53 (39) = happyShift action_14
action_53 (40) = happyShift action_15
action_53 (4) = happyGoto action_54
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (6) = happyShift action_2
action_54 (7) = happyShift action_25
action_54 (8) = happyShift action_26
action_54 (9) = happyShift action_27
action_54 (10) = happyShift action_28
action_54 (12) = happyShift action_29
action_54 (13) = happyShift action_30
action_54 (14) = happyShift action_31
action_54 (15) = happyShift action_32
action_54 (16) = happyShift action_33
action_54 (17) = happyShift action_34
action_54 (18) = happyShift action_35
action_54 (19) = happyShift action_36
action_54 (20) = happyShift action_4
action_54 (21) = happyShift action_5
action_54 (22) = happyShift action_6
action_54 (25) = happyShift action_7
action_54 (26) = happyShift action_8
action_54 (28) = happyShift action_9
action_54 (31) = happyShift action_10
action_54 (36) = happyShift action_11
action_54 (37) = happyShift action_12
action_54 (38) = happyShift action_13
action_54 (39) = happyShift action_14
action_54 (40) = happyShift action_15
action_54 (4) = happyGoto action_24
action_54 _ = happyReduce_18

action_55 (6) = happyShift action_2
action_55 (7) = happyShift action_25
action_55 (8) = happyShift action_26
action_55 (9) = happyShift action_27
action_55 (10) = happyShift action_28
action_55 (12) = happyShift action_29
action_55 (13) = happyShift action_30
action_55 (14) = happyShift action_31
action_55 (15) = happyShift action_32
action_55 (16) = happyShift action_33
action_55 (17) = happyShift action_34
action_55 (18) = happyShift action_35
action_55 (19) = happyShift action_36
action_55 (20) = happyShift action_4
action_55 (21) = happyShift action_5
action_55 (22) = happyShift action_6
action_55 (25) = happyShift action_7
action_55 (26) = happyShift action_8
action_55 (28) = happyShift action_9
action_55 (31) = happyShift action_10
action_55 (32) = happyShift action_64
action_55 (36) = happyShift action_11
action_55 (37) = happyShift action_12
action_55 (38) = happyShift action_13
action_55 (39) = happyShift action_14
action_55 (40) = happyShift action_15
action_55 (4) = happyGoto action_24
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (27) = happyShift action_63
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (28) = happyShift action_57
action_57 (33) = happyShift action_58
action_57 (34) = happyShift action_59
action_57 (5) = happyGoto action_62
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_27

action_59 _ = happyReduce_28

action_60 (6) = happyShift action_2
action_60 (7) = happyShift action_25
action_60 (8) = happyShift action_26
action_60 (9) = happyShift action_27
action_60 (10) = happyShift action_28
action_60 (12) = happyShift action_29
action_60 (13) = happyShift action_30
action_60 (14) = happyShift action_31
action_60 (15) = happyShift action_32
action_60 (16) = happyShift action_33
action_60 (17) = happyShift action_34
action_60 (18) = happyShift action_35
action_60 (19) = happyShift action_36
action_60 (20) = happyShift action_4
action_60 (21) = happyShift action_5
action_60 (22) = happyShift action_6
action_60 (24) = happyShift action_61
action_60 (25) = happyShift action_7
action_60 (26) = happyShift action_8
action_60 (28) = happyShift action_9
action_60 (31) = happyShift action_10
action_60 (36) = happyShift action_11
action_60 (37) = happyShift action_12
action_60 (38) = happyShift action_13
action_60 (39) = happyShift action_14
action_60 (40) = happyShift action_15
action_60 (4) = happyGoto action_24
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (6) = happyShift action_2
action_61 (20) = happyShift action_4
action_61 (21) = happyShift action_5
action_61 (22) = happyShift action_6
action_61 (25) = happyShift action_7
action_61 (26) = happyShift action_8
action_61 (28) = happyShift action_9
action_61 (31) = happyShift action_10
action_61 (36) = happyShift action_11
action_61 (37) = happyShift action_12
action_61 (38) = happyShift action_13
action_61 (39) = happyShift action_14
action_61 (40) = happyShift action_15
action_61 (4) = happyGoto action_68
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (27) = happyShift action_67
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (6) = happyShift action_2
action_63 (20) = happyShift action_4
action_63 (21) = happyShift action_5
action_63 (22) = happyShift action_6
action_63 (25) = happyShift action_7
action_63 (26) = happyShift action_8
action_63 (28) = happyShift action_9
action_63 (31) = happyShift action_10
action_63 (36) = happyShift action_11
action_63 (37) = happyShift action_12
action_63 (38) = happyShift action_13
action_63 (39) = happyShift action_14
action_63 (40) = happyShift action_15
action_63 (4) = happyGoto action_66
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (6) = happyShift action_2
action_64 (20) = happyShift action_4
action_64 (21) = happyShift action_5
action_64 (22) = happyShift action_6
action_64 (25) = happyShift action_7
action_64 (26) = happyShift action_8
action_64 (28) = happyShift action_9
action_64 (31) = happyShift action_10
action_64 (36) = happyShift action_11
action_64 (37) = happyShift action_12
action_64 (38) = happyShift action_13
action_64 (39) = happyShift action_14
action_64 (40) = happyShift action_15
action_64 (4) = happyGoto action_65
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (6) = happyShift action_2
action_65 (7) = happyShift action_25
action_65 (8) = happyShift action_26
action_65 (9) = happyShift action_27
action_65 (10) = happyShift action_28
action_65 (12) = happyShift action_29
action_65 (13) = happyShift action_30
action_65 (14) = happyShift action_31
action_65 (15) = happyShift action_32
action_65 (16) = happyShift action_33
action_65 (17) = happyShift action_34
action_65 (18) = happyShift action_35
action_65 (19) = happyShift action_36
action_65 (20) = happyShift action_4
action_65 (21) = happyShift action_5
action_65 (22) = happyShift action_6
action_65 (25) = happyShift action_7
action_65 (26) = happyShift action_8
action_65 (28) = happyShift action_9
action_65 (31) = happyShift action_10
action_65 (36) = happyShift action_11
action_65 (37) = happyShift action_12
action_65 (38) = happyShift action_13
action_65 (39) = happyShift action_14
action_65 (40) = happyShift action_15
action_65 (4) = happyGoto action_24
action_65 _ = happyReduce_26

action_66 (6) = happyShift action_2
action_66 (7) = happyShift action_25
action_66 (8) = happyShift action_26
action_66 (9) = happyShift action_27
action_66 (10) = happyShift action_28
action_66 (12) = happyShift action_29
action_66 (13) = happyShift action_30
action_66 (14) = happyShift action_31
action_66 (15) = happyShift action_32
action_66 (16) = happyShift action_33
action_66 (17) = happyShift action_34
action_66 (18) = happyShift action_35
action_66 (19) = happyShift action_36
action_66 (20) = happyShift action_4
action_66 (21) = happyShift action_5
action_66 (22) = happyShift action_6
action_66 (25) = happyShift action_7
action_66 (26) = happyShift action_8
action_66 (28) = happyShift action_9
action_66 (31) = happyShift action_10
action_66 (36) = happyShift action_11
action_66 (37) = happyShift action_12
action_66 (38) = happyShift action_13
action_66 (39) = happyShift action_14
action_66 (40) = happyShift action_15
action_66 (4) = happyGoto action_24
action_66 _ = happyReduce_23

action_67 (28) = happyShift action_57
action_67 (33) = happyShift action_58
action_67 (34) = happyShift action_59
action_67 (5) = happyGoto action_69
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (6) = happyShift action_2
action_68 (7) = happyShift action_25
action_68 (8) = happyShift action_26
action_68 (9) = happyShift action_27
action_68 (10) = happyShift action_28
action_68 (12) = happyShift action_29
action_68 (13) = happyShift action_30
action_68 (14) = happyShift action_31
action_68 (15) = happyShift action_32
action_68 (16) = happyShift action_33
action_68 (17) = happyShift action_34
action_68 (18) = happyShift action_35
action_68 (19) = happyShift action_36
action_68 (20) = happyShift action_4
action_68 (21) = happyShift action_5
action_68 (22) = happyShift action_6
action_68 (25) = happyShift action_7
action_68 (26) = happyShift action_8
action_68 (28) = happyShift action_9
action_68 (31) = happyShift action_10
action_68 (36) = happyShift action_11
action_68 (37) = happyShift action_12
action_68 (38) = happyShift action_13
action_68 (39) = happyShift action_14
action_68 (40) = happyShift action_15
action_68 (4) = happyGoto action_24
action_68 _ = happyReduce_17

action_69 (29) = happyShift action_70
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_29

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
		 (Null
	)

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Equal happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Greater happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (GreaterThan happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Less happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (LessThan happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Nand happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Nor happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Xor happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happyReduce 6 4 happyReduction_17
happyReduction_17 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 4 4 happyReduction_18
happyReduction_18 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Cons happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_19 = happySpecReduce_2  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (IsNull happy_var_2
	)
happyReduction_19 _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_2  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Tail happy_var_2
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_2  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Head happy_var_2
	)
happyReduction_21 _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  4 happyReduction_22
happyReduction_22 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happyReduce 6 4 happyReduction_23
happyReduction_23 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_24 = happySpecReduce_2  4 happyReduction_24
happyReduction_24 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  4 happyReduction_25
happyReduction_25 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happyReduce 6 4 happyReduction_26
happyReduction_26 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_27 = happySpecReduce_1  5 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_28 = happySpecReduce_1  5 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_29 = happyReduce 5 5 happyReduction_29
happyReduction_29 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 41 41 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 6;
	TokenAdd -> cont 7;
	TokenMult -> cont 8;
	TokenSub -> cont 9;
	TokenAnd -> cont 10;
	TokenOr -> cont 11;
	TokenEqual -> cont 12;
	TokenGreater -> cont 13;
	TokenGreaterThan -> cont 14;
	TokenLess -> cont 15;
	TokenLessThan -> cont 16;
	TokenNand -> cont 17;
	TokenNor -> cont 18;
	TokenXor -> cont 19;
	TokenTrue -> cont 20;
	TokenFalse -> cont 21;
	TokenIf -> cont 22;
	TokenThen -> cont 23;
	TokenElse -> cont 24;
	TokenVar happy_dollar_dollar -> cont 25;
	TokenLam -> cont 26;
	TokenArrow -> cont 27;
	TokenLParen -> cont 28;
	TokenRParen -> cont 29;
	TokenEq -> cont 30;
	TokenLet -> cont 31;
	TokenIn -> cont 32;
	TokenBoolean -> cont 33;
	TokenNumber -> cont 34;
	TokenColon -> cont 35;
	TokenCons -> cont 36;
	TokenIsNull -> cont 37;
	TokenTail -> cont 38;
	TokenHead -> cont 39;
	TokenNull -> cont 40;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 41 tk tks = happyError' (tks, explist)
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
