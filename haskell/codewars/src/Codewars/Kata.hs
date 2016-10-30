module Codewars.Kata where

nbYear :: Int -> Double -> Int -> Int -> Int
nbYear p0 percent aug p = result where
  result = length . takeWhile (< p) . iterate calcYearPop $ p0

  calcYearPop :: Int -> Int
  calcYearPop startingPop = startingPop + amtFromPct startingPop + aug

  amtFromPct :: Int -> Int
  amtFromPct startingPop = truncate $ fromIntegral startingPop * (percent / 100.0)
