{-
[純粋な関数（入出力系の関数を使わない関数）定義 の例]

関数名 引数名1 引数名2 = 局所変数1 とか 局所変数2 とかを使った式
 where
    局所変数1 = なにか
    局所変数2 = ほげ

where 下で定義した定数は、この関数の内部でのみ使うことができる

テストのしやすさなどから、できるだけこちらのタイプの関数を定義して使うと良い (らしい)
-}

main = do
    let message = howOldAreYou "いぬ" 10
    putStrLn message

howOldAreYou name age = nameSan ++ ageSai
 where
    nameSan = name ++ "さん"
    ageSai = show age ++ "歳"
