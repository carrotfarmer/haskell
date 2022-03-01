module Main where

factorial 0 = 1
factorial n = n * factorial (n - 1)

main :: IO ()
main = do
  putStrLn ("Enter the number: ")
  inpStr <- getLine
  let inpNum = read inpStr :: Int
  let fNum = factorial inpNum
  let fNumStr = show fNum

  putStrLn fNumStr
