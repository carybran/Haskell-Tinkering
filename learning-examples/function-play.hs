
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
  | otherwise = shamer

shamer :: String
shamer = "Shame on you walking heart attack - that bmi is a to damn high!"

mymax :: (Ord a) => a -> a -> a
mymax a b
  | a > b = a
  | otherwise = b

mycomp :: (Ord a) => a -> a -> Ordering
a `mycomp` b
  | a > b = GT
  | a == b = EQ
  | otherwise = LT

-- improving code readability with where clause
mybmi :: (RealFloat a) => a -> a -> String
mybmi heightInches weightLbs
  | bmi <= skinny = "You are a twig"
  | bmi <= normie = "You are normal"
  | bmi <= chubbster = "You are a chub"
  | otherwise = shamer
  where
    bmi = weightLbs / heightInches^2 * 703 -- standard formula for BMI calculation
    skinny = 18.5
    normie = 25.0
    chubbster = 30.0

bindMaybe :: Maybe a -> (a -> Maybe b) -> Maybe b
bindMaybe Nothing _ = Nothing
bindMaybe (Just x) f = f x

foo :: String -> String -> String -> Maybe Int
foo x y z = readMaybe x `bindMaybe` \num1 ->
            readMaybe y `bindMaybe` \num2 ->
            readMaybe z `bindMaybe` \num3 ->
            Just (num1 + num2 + num3)
            