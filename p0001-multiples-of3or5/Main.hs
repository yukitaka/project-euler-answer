module Main (main) where

main :: IO ()
main = print $ sum [x | x <- [1 :: Integer .. 999], x `mod` 3 == 0 || x `mod` 5 == 0]
