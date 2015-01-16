module Disemvowel where
import Data.Char

disemvowel :: String -> String
disemvowel = filter isConsonant
	where isConsonant letter = not . elem (toLower letter) $ "aeiou"
