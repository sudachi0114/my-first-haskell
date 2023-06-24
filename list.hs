{-
Haskell では、実際にはあまり「配列」は使わない
配列のような「単方向リスト」と呼ばれるものを使う
-}

main = do
    let ls = [1..4]  -- `..` は数字のリスト用の特殊な記法、間の数字を補ってくれる
    print ls          -- [1, 2, 3, 4]

    -----
    let ls2 = [1,3..8]
    print ls2         -- [1, 3, 5, 7] ?!

    let ls21 = [1,2..9]
    print ls21        -- [1,2,3,4,5,6,7,8,9]

    let ls22 = [1,3..9]
    print ls22        -- [1,3,5,7,9]

    let ls23 = [1,5..9]
    print ls23        -- [1,5,9]

    let ls24 = [1,6..9]
    print ls24        -- [1,6]

    let ls24 = [1,6..12]
    print ls24        -- [1,6,11]
    -----

    let ls3 = ["foo", "bar", "baz"]
    print ls3         -- ["foo", "bar", "baz"]
    print (ls3 !! 1)  -- "bar"
