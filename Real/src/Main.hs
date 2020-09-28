--import Helpers
--import Data.Text

--main = putStrLn (hello "Taegor")

-- main = putStrLn "Hi, haskeller!"

simpleFunc :: Int -> Int

simpleFunc 1 = 666

simpleFunc x = x * x


main = print (simpleFunc 10)
