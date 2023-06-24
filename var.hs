import Data.IORef -- 変数を使うときは最初にこれを書く

main = do
    v <- newIORef 0   -- 新しい変数 `v` の中身を 0 で初期化
    c <- readIORef v  -- 変数 `v` の中身を、定数 `c` に代入
    print c           -- 0

    writeIORef v (c + 1)  -- `c` の値に +1 した値を `v` に代入
    c2 <- readIORef v     -- 変数 `v` の中身を、定数 c2 に代入
    print c2              -- 1
