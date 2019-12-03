import System.IO  
import Control.Monad

main :: IO ()
main = do
    contents <- readFile "1.txt"
    let firstPart = sum . map readNum . words $ contents
    let secondPart = sum . map (\x -> (sum $ init $ vodo [x]) + x) . map readNum . words $ contents
    print secondPart

vodo :: [Double] -> [Double]
vodo (x:xs)
    | count x <= 0 = (x : xs)
    | otherwise = vodo (count x : x : xs)


readNum :: String -> Double
readNum = count . read


count :: Double -> Double
count = fromIntegral . (subtract 2) . floor . (/ 3)
