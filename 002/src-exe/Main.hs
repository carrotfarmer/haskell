-- Program to count the frequency of
-- each character in a string

module Main where

import Data.Char
import Data.List

run :: String -> [(Char, Int)]
run = display . group . sort . canonical

-- !== is /== in haskell
-- this removes all the whitespaces in the string
-- converts each char to uppercase
canonical :: String -> String
canonical = filter (/= ' ') . map normalize

-- h = H
normalize :: Char -> Char
normalize c
  | isUpper c = c
  | isLower c = toUpper c
  | otherwise = ' '

-- display :: [[a]] -> [(a, Int)]
display = map (\x -> (head x, length x))

main :: IO ()
main = putStrLn "Hello, Haskell!"
