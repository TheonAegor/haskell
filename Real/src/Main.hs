indicate :: String -> String
indicate address
    | address == "127.0.0.1" = "local host" 
    | null address = "empty IP-address" 
    | otherwise = address

--indicate address = if address == "127.0.0.1" then "localhost" else address

main = putStrLn ( indicate "Hello world")
