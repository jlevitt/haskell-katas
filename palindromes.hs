module Palindrome where
import Data.Char

isPalindrome :: [Char] -> Bool
isPalindrome "" = True
isPalindrome word = or . zipWith (==) (normalize word) $ (normalize . reverse $ word)
	where normalize = filter isAlphaNum . map toLower
