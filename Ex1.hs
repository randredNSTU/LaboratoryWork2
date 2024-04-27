import Text.Regex.Posix

findSubstrings :: String -> [String]
findSubstrings s = getAllTextMatches (s =~ "10+1" :: AllTextMatches [] String)

main :: IO ()
main = do
    let str1 = "101tf11flb10001"
    let str2 = "101001tf11flb10001"
    putStrLn $ unwords $ findSubstrings str1
    putStrLn $ unwords $ findSubstrings str2