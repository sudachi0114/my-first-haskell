{-

[ここでの例は、純粋でない関数 (入出力系の関数を使う関数) の定義]

関数名 引数名1 引数名2 = do
    ここに
    処理を
    書いていく
    ...

ここで定義した getName を呼び出す時は、notPure な関数なので
入力系の関数と同じく `<-` を使う
-}

main = do
    name <- getName "☆"
    putStrLn name

getName str = do
    putStrLn "苗字:"
    lastName <- getLine
    putStrLn "名前:"
    firstName <- getLine
    return (lastName ++ str ++ firstName)
