main = do
    let foo = "やっふー"
    let bar = 3.14
    let baz = True

    c <- getContents
    putStrLn foo         --
    putStrLn (show bar)  -- `show` は、文字列以外のものを文字列に変換する関数 (Show 型に変換する??)
    print baz            -- `print` は `show` してから `putStrLn` する便利関数

    {-
        ↓ これをコメントアウトするかどうかで getContents の受付があるかどうかが決まるっぽい
            使ってない変数があると代入が無視される..??
    -}
    -- putStrLn c
