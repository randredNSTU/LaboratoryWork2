import Text.Regex.Posix

findSubstrings :: String -> [String]
findSubstrings s = getAllTextMatches (s =~ "10+1" :: AllTextMatches [] String)

main :: IO ()
main = do
    let str = "101tf11flb10001"
    putStrLn $ unwords $ findSubstrings str
