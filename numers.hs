module Numers where


testmx1 = [[-1,2],[3.5,-4]]
testmx2 = [[5,6],[-7.5,8.0]]
testmx3 = [[9,8,7],[6,5,4],[3,2,1],[0,-1,-2]]


-- -- -- -- --
-- Functions for two matrices
-- -- -- -- --
mxSum :: (Num a) => [[a]] -> [[a]] -> [[a]]
-- | rv[i,j] = a[i,j] + b[i,j]
-- | if shapes of matrices are different, only their intersections
-- | will be used
mxSum = zipWith $ zipWith (+)

mxDot :: (Num a) => [[a]] -> [[a]] -> [[a]]
-- | rv[i,j] = a[i,j] * b[i,j]
-- | if shapes does not match, see `mxSum` docs
mxDot = zipWith $ zipWith (*)


-- -- -- -- --
-- Functions for one matrix
-- -- -- -- --
mxAbs :: (Num a) => [[a]] -> [[a]]
-- | rv[i,j] = abs a[i,j]
mxAbs [] = []
mxAbs (x:xs) = map abs x : mxAbs(xs)

mxAdd :: (Num a) => [[a]] -> a -> [[a]]
-- | rv[i,j] = a[i,j] + n
mxAdd [] _ = []
mxAdd (x:xs) n = map (+ n) x : mxAdd xs n

mxMul :: (Num a) => [[a]] -> a -> [[a]]
-- | rv[i,j] = a[i,j] * n
mxMul [] _ = []
mxMul (x:xs) n = map (* n) x : mxMul xs n
