module Main (main) where

primes :: [Integer]
primes = 2 : filter isPrime [3, 5 ..]
   where
     isPrime n = all (\p -> n `mod` p /= 0) $ takeWhile (\p -> p * p <= n) primes

primeFactors :: Integer -> [Integer]
primeFactors n = factorize n primes
  where
    factorize 1 _ = []
    factorize n (p : ps)
      | p * p > n = [n]
      | n `mod` p == 0 = p : factorize (n `div` p) (p : ps)
      | otherwise = factorize n ps

main :: IO()
main = print $ maximum $ primeFactors 600851475143
