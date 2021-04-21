
doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

--shows structure of if statement
doubleSmallNumber x = if x > 100
                      then x
                      else doubleMe x

-- shows Haskell interfaces and polymorphic behavior
lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

mysum :: (Num a) => [a] -> a
mysum [] = 0
mysum (x:xs) = x + mysum xs

-- recognizing a patern and then prefixing it with the @
mycap :: String -> String
mycap "" = "Empty string - naughty naughty"
mycap all@(x:xs)= "The first letter of " ++ all ++ " is " ++ [x]

-- guard example - like a case statement
myguard :: (RealFloat a) => a -> String
myguard somevalue
  | somevalue <= 10.0 = "You are gonna die"
  | somevalue <= 18.5 = "You are a skinty"
  | somevalue <= 25.0 = "You are a normie"
  | somevalue <= 30.0 = "You are a chub"
  | otherwise = fatshamer

fatshamer :: String
fatshamer = "Shame on you walking heart attack - that bmi is a to damn high!"
