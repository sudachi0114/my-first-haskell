import Control.Monad -- for文を使う時に必要
import Data.IORef    -- 変数を使う時に必要

main = do
    printList [1..5]

    {-
        $ echo '6+7+8+9+10' | bc
        40
    -}
    s <- getSum [6..10]
    print s

printList ls = do
    forM_ ls $ \i -> do
        print i

getSum ls = do
    s <- newIORef 0
    forM_ ls $ \i -> do
        c <- readIORef s
        writeIORef s (c + i)
    ret <- readIORef s
    return ret