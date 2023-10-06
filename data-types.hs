data PeaNum = Succ PeaNum | Zero
incr:: PeaNum -> PeaNum
incr = Succ

-- $> x = x +x
-- $> x 1

