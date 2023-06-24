import Control.Monad -- for文を使う時に必要
import Data.IORef    -- 変数を使う時に必要

main = do
    printList [1..5]

printList ls = do
    forM_ ls $ \i -> do
        print i
