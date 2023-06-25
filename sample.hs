{-
[純粋な関数（入出力系の関数を使わない関数）定義 の例]

関数名 引数名1 引数名2 = 局所変数1 とか 局所変数2 とかを使った式
 where
    局所変数1 = なにか
    局所変数2 = ほげ

where 下で定義した定数は、この関数の内部でのみ使うことができる

テストのしやすさなどから、できるだけこちらのタイプの関数を定義して使うと良い (らしい)
-}

main :: IO ()
main = do
    let 
        message :: String
        message = howOldAreYou "いぬ" 10
    putStrLn (message :: String) :: IO ()

howOldAreYou :: String -> Int -> String
howOldAreYou name age = nameSan ++ ageSai :: String
 where
    nameSan :: String
    nameSan = name ++ ("さん" :: String) :: String
    ageSai :: String
    ageSai = show age ++ ("歳" :: String) :: String

{-
[関数の型の書き方]
-- 引数を好きなだけ並べて、最後に戻り値の型
-- 全て矢印 `->` で繋げる
関数名 :: 最初の引数の型 -> 次の引数の型 -> 戻り値の型
関数の定義

[値に型を明記する]
(値 :: 型)

[ = 以降の部分の型を明記する]
なんとか = 式 :: 式の部分の型
-}