type Age     = Int
type Name    = String
type Message = String

main :: IO ()
main = do
    -- Char (文字) 型
    --  'a' とか 'あ' みたいな1文字の Character
    --  新しく Char 型の値を作る時はシングルクオート `'` で囲む
    --  (もちろん `:: Char` は書かなくても動く)
    print ('a' :: Char)

    -- String 型
    --  実態は Char 型の値のリスト
    --  新しく String 型の値を作る時はダブルクオート `"` で囲む
    putStrLn (['a'..'d'] :: String)
    putStrLn ("abcd" :: String)

    -- Int (整数) 型
    --  32bit や 64bit で表現できる上限までしか扱うこと ができない
    print (1000000000000000000 :: Int)
    print (10000000000000000000 :: Int) -- オーバーフロー

    -- Integer 型
    --  (メモリやリソースが許す限り) 無限に大きい整数を扱うことができる型
    print (10000000000000000000 :: Integer) -- さっきオーバーフローしたやつも表現できる

    -- Float, Double (浮動小数点) 型
    --  Float が単精度, Double が倍精度
    print (3.14 :: Float)
    print (2.7182818 :: Double)

    -- Bool (真偽) 型
    --  True か False がこの型の値
    --  下記のような例では、if を使うことが一般的
    --      また Haskell では if に数値 (整数型) を与えることはできない
    case (3 > 4) of
        True -> do putStrLn "Yes"
        False -> do putStrLn "No"

    -- List
    --  X 型の値のリストの型は [X]
    --  List は Int や Float などとは違い、他の型 (リストの中身の値の型) をもとにして作られる
    --      cf. 代数的データ型
    print ([12, 23, 34] :: [Int])
    -- [Char] と String は同じもの
    print ("hello" :: [Char])
    print ("hello" :: String)

    -- Tuple
    -- print [23, "hoge", True] <- コンパイルエラー
    --  List の中身は全て同じ型でなければいけない
    --  Tuple は「型が異なる値の集合」のようなイメージで使うことができる
    --  Tuple の型は、中身の要素の型に応じて決まる
    print (23, "hoge", True)
    print ((23, "hoge", True) :: (Int, String, Bool))

    -- Tuple を使えば、複数の値を返す関数が気軽に書ける
    putStrLn "割られる数:"
    strA <- getLine
    putStrLn "割る数:"
    strB <- getLine
    let
        a = read strA :: Int
        b = read strB :: Int
        (d, m) = intDivMod a b
    putStrLn ("商は" ++ show d)
    putStrLn ("余りは" ++ show m)

    -- IO X 型
    --  入出力がかかわる時に登場する型
    {-
        $ stack ghci
        ghci> :t "a"
        "a" :: String
        ghci> :t 'a'
        'a' :: Char
        ghci> :t getLine
        getLine :: IO String

        ghci 上で `:t` の後に型を知りたい関数名や値を与えると、その型を教えてくれる便利機能がある
        :t getLine すると IO String 型だと教えてくれている
            String を返すんだけど、ユーザーの入力が関係するので IO がついている
            <-> IO がついている時は入出力がかかわることの目印になる

        型に IO がついている関数は `定数 <- 関数` で値を取り出す

        main の型は main :: IO ()
            main 関数は特に戻り値を返さないので、空の Tuple () に IO をつけている
            void とか Unit とかそういう感じ

        他の入出力にかかわる関数の型
        -- FilePath は String の別名
        -- ファイルのパスを受け取って、入出力が関わった String 型の値を返す
        readFile :: FilePath -> IO String
        -- ファイルパスと、ファイルに書き込む内容を受け取って、入出力が関わった処理を行う
        writeFile :: FilePath -> String -> IO ()
        putStrLn :: String -> IO ()
    -}

    let message = howOldAreYou "ねこ" 8
    putStrLn message

-- | 商と余りを返す関数
intDivMod :: Int -> Int -> (Int, Int)
intDivMod a b = (div a b, mod a b)

-- 型に別名をつける
-- type 別名 = 実態の型名
--  説明の効果を高めるために、型に別名をつけることもできる
howOldAreYou :: Name -> Age -> Message
howOldAreYou name age = nameSan ++ ageSai
 where
    nameSan = name ++ "さん"
    ageSai = show age ++ "歳"