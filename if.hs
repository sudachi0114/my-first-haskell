{-
if は純粋な関数の中でも使うことができる
-}

main = do
    putStrLn "挨拶といえば？:"
    greeting <- getLine
    answerToGreeting greeting

    putStrLn "数字を入力してください:"
    num <- getLine
    putStrLn (checkNum num)

-- 純粋でない関数内の `if`
-- `then`, `else` の後に do をつける
answerToGreeting greeting = do
    if greeting == "Hi"
        then do
            putStrLn "English, Ok"
        else do
            putStrLn "英語でたのんます"

-- 純粋な関数ないの `if`
-- `then`, `else` の後に do がつかない
checkNum num = 
    if num == "0"
        then "ゼロ〜"
        else "ゼロ以外"
