import System.IO  
import Control.Monad


main :: IO ()
main = do
    contents <- readFile "1.txt"
    let conv = sum . map readNum . words $ contents
    print conv

readNum :: String -> Int
readNum = count . fromIntegral . read

count :: (RealFrac a, Integral b) => a -> b
count = (subtract 2) . floor . (/ 3)
