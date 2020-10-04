import Data.Tuple.Select
import Data.Char
import Data.String.Utils

findCell function tup = function tup

main0 = print $ sel3 ("One", "Two", "Three", "Four")

main1 = print [toUpper c | c <- "http", c /= 'h', c /= 'p']
--это генератор списка, его скелет:
--[OPERATION ELEM | ELEM <- LIST] LIST - список, ELEM - элемент этого списка,OPERATION - действие применяемое к каждому элементу
--Мы говорим "Возьми список LIST, последовательно пройдись по всем его элементам и прмени к каждому из них функцию OPERATION"

operationWithSomeLists = print [prefix ++ name | name <- names, prefix <- namePrefix]
    where names = ["James", "Victor", "Denis", "Michael"]
          namePrefix = ["Mr. "]
--[OPERATION_with_ELEMs | ELEM1 <- LIST1, ..., ELEMN <- LISTN ]

operationWithSomeListsIfTwoPrefixs = print [prefix ++ name | name <- names, prefix <- namePrefix]
    where names = ["James", "Victor", "Denis", "Michael"]
          namePrefix = ["Mr. ", "Sir "] 
--каждый с каждым будет конкатенировать

addingConditionsInListGen = [if car == "Bentley" then "Wow!" else "Good!" | car <- cars]
    where cars = ["Mersedes",
                  "BMW",
                  "Bentley",
                  "Audi",
                  "Bentley"]

addingLocalExpressionInListGen = [toUpper word | word <- "http",
    let hletter = 'h' in word /= hletter]
-- =========================================================================

checkGooglerBy :: String -> String
checkGooglerBy email =
    if  email `endsWith` "gmail.com"
    then nameFrom email ++ " is a Googler!"
    else email
    where endsWith str suffix = endswith suffix str
          nameFrom fullEmail = takeWhile (/= '@') fullEmail

checkGooglerMail = print [checkGooglerBy email | email <- ["adam@gmail.com", 
                                                           "bob@yahoo.com", 
                                                           "richard@gmail.com",
                                                           "elen@yandex.ru",
                                                           "denis@gmail.com"]]


takeName email = takeWhile (/= '@') email
endsWith str suffix = endswith suffix str






