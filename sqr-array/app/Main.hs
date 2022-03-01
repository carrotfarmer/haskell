-- Program to square all elements in a given array

module Main where

sqrArray :: [Int] -> [Int]
sqrArray arr = map (^ 2) arr

main :: IO ()
main = do
  putStrLn "Enter array:"
  inpStr <- getLine

  let inpArr = read inpStr :: [Int]
  let sqredArray = unwords $ map show $ sqrArray inpArr
  putStrLn sqredArray
