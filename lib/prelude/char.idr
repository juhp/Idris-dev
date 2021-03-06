module prelude.char

import builtins

isUpper : Char -> Bool
isUpper x = x >= 'A' && x <= 'Z'

isLower : Char -> Bool
isLower x = x >= 'a' && x <= 'z'

isAlpha : Char -> Bool
isAlpha x = isUpper x || isLower x 

isDigit : Char -> Bool
isDigit x = (x >= '0' && x <= '9')

isAlphaNum : Char -> Bool
isAlphaNum x = isDigit x || isAlpha x

isSpace : Char -> Bool
isSpace x = x == ' '  || x == '\t' || x == '\r' ||
            x == '\n' || x == '\f' || x == '\v' ||
            x == '\xa0'

toUpper : Char -> Char
toUpper x = if (isLower x) 
               then (prim__intToChar (prim__charToInt x - 32))
               else x

toLower : Char -> Char
toLower x = if (isUpper x)
               then (prim__intToChar (prim__charToInt x + 32))
               else x

