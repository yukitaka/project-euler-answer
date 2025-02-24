module Main (main) where

evenFibList :: [Integer]
evenFibList = 0 : 2 : zipWith (\a b -> 4 * b + a) evenFibList (tail evenFibList)

main :: IO()
main = print $ sum $ takeWhile (< 4000000) evenFibList

