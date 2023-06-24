main = do
    let foo = "やっふー"
    let bar = 3.14
    let baz = True

    c <- getContents
    putStrLn foo
    putStrLn (show bar)
    print baz

    {-
        ↓ これをコメントアウトするかどうかで getContents の受付があるかどうかが決まるっぽい
            使ってない変数があると代入が無視される..??
    -}
    -- putStrLn c
