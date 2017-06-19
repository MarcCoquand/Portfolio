module Utils.Functions exposing (..)
dropWhile : (a -> Bool) -> [a] -> [a]
dropWhile f ls = foldr (\a r b -> if b && f a then r True else a:r False) (const []) ls True
