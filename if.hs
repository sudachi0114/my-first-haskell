main = do
    putStrLn "挨拶といえば？:"
    greeting <- getLine
    answerToGreeting greeting

-- 純粋でない関数内の `if`
-- `then`, `else` の後に do をつける
answerToGreeting greeting = do
    if greeting == "Hi"
        then do
            putStrLn "English, Ok"
        else do
            putStrLn "英語でたのんます"
