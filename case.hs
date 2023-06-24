main = do
    putStrLn "number:"
    num <- getLine
    printInEnglish num
    putStrLn (numInEnglish num)

-- 純粋でない関数
printInEnglish num = do
    case num of
        "1" -> do
            putStrLn "one"
        "2" -> do
            putStrLn "two"
        "3" -> do
            putStrLn "three"
        _ -> do
            putStrLn "I don't know."

-- 純粋な関数
numInEnglish num =
    case num of
        "1" -> "one"
        "2" -> "two"
        "3" -> "three"
        _ -> "わからん (´・ω・｀)"