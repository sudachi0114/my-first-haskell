main = do
    putStrLn "getLine:"
    l <- getLine            -- 1行の標準入力を定数 `l` に代入
    putStrLn l

    putStrLn "getContents:"
    c <- getContents        -- Ctrl-D が押されるまでの複数行の標準入力を定数 `c` に代入
    putStrLn c
