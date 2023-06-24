main = do
    let foo = "やっふー"
    let bar = 3.14
    let baz = True

    c <- getContents
    putStrLn foo
    putStrLn (show bar)
    print baz
