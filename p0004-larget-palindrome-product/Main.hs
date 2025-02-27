module Main (main) where

isPalindrome :: Int -> Bool
isPalindrome n = show n == reverse (show n)

largestPalindrome :: Int
largestPalindrome = maximum [x * y | x <- [999, 998 .. 100], y <- [x, x - 1 .. 100], isPalindrome (x * y)]

main :: IO ()
main = print largestPalindrome
