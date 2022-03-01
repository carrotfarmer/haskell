data List a = Empty | Cons a (List a)

toHList :: List a -> [a]
toHList Empty = []
toHList (Cons x xs) = x : toHList (xs)

map' f [] = []
map' f (x : xs) = f x : map' f xs

data Error a = Error | Ok a deriving (Show)

safeDivide :: Error Int -> Error Int -> Error Int
safeDivide (Error) _ = Error
safeDivide _ (Error) = Error
safeDivide (Ok a) (Ok 0) = Error
safeDivide (Ok a) (Ok b) = Ok (a `div` b)

data Person = Person
  { name :: String,
    id :: Int,
    dob :: (Int, Int, Int)
  }
