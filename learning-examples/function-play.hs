
doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
                      then x
                      else doubleMe x


lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

mysum :: (Num a) => [a] -> a
mysum [] = 0
mysum (x:xs) = x + mysum xs

mycap :: String -> String
mycap "" = "Empty string - naughty naughty"
mycap all@(x:xs)= "The first letter of " ++ all ++ " is " ++ [x]
