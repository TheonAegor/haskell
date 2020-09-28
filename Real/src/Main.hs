prepareLength :: Double -> Double
prepareLength line = 
                    line * coefficient * correlation
                    where coefficient = 0.4595
                          correlation = 1.2

changeNum :: Double -> Double
changeNum nbr = 
                let coefficient = 3.14
                    correction = 0.015
                in
                nbr * coefficient / correction

main = print ( prepareLength (changeNum 56))
