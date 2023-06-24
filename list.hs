{-
Haskell では、実際にはあまり「配列」は使わない
配列のような「単方向リスト」と呼ばれるものを使う
-}

main = do
    let ls = [1..4]  -- `..` は数字のリスト用の特殊な記法、間の数字を補ってくれる
    print ls          -- [1, 2, 3, 4]

    let ls2 = [1,3..8]
    print ls2         -- [1, 3, 5, 7] ?!

    let ls3 = ["foo", "bar", "baz"]
    print ls3         -- ["foo", "bar", "baz"]
    print (ls3 !! 1)  -- "bar"
