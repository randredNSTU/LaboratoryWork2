module Main where

import Data.List (isPrefixOf)

findSubstrings :: String -> [String]
findSubstrings str = go str
  where
    go [] = [] -- базовый случай: если строка пустая, возвращаем пустой список
    go ('1':'0':xs) = extractSubstring ('1':'0':xs) : go xs -- если встретили "10", извлекаем подстроку и рекурсивно вызываем go с оставшейся частью строки
    go (_:xs) = go xs -- если не встретили "10", продолжаем поиск в оставшейся части строки

    extractSubstring :: String -> String
    extractSubstring [] = [] -- базовый случай: если строка пустая, возвращаем пустую строку
    extractSubstring ('1':'0':xs) = '1':'0':takeWhile (== '0') xs ++ "1" -- извлекаем подстроку между "10" и следующей "1"
    extractSubstring (_:xs) = extractSubstring xs -- если не встретили "10", продолжаем извлечение подстроки

main :: IO ()
main = do
  let str1 = "101tf11flb10001" -- Первая строка
      str2 = "101001tf11flb10001" -- Вторая строка
      result1 = findSubstrings str1 -- Находим подстроки для первой строки
      result2 = findSubstrings str2 -- Находим подстроки для второй строки

  putStrLn "Результат для первой строки: " -- Выводим результат для первой строки
  putStrLn $ formatResult result1 -- Форматируем и выводим результат для первой строки

  putStrLn "Результат для второй строки: " -- Выводим результат для второй строки
  putStrLn $ formatResult result2 -- Форматируем и выводим результат для второй строки

formatResult :: [String] -> String
formatResult [] = "."
formatResult [x] = x ++ "."
formatResult (x:xs) = x ++ ", " ++ formatResult xs
