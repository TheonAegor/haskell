divide :: Double -> Double -> Double
divide x y = x / y 

main = 
    let tempFunc = divide 10.03
    in
    print (tempFunc 2.1)

--let tempFunc = \x -> 10.03 / x; можно заменить let в main 
