main = do
    i <- readFile "input.txt"
    putStrLn i
    writeFile "output.txt" i