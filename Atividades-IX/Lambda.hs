--Questao 1 --------------
xor :: Bool -> Bool -> Bool
xor a b = (\x y -> AND x y) a b
--Questao 2 --------------
media :: Float -> Float -> Float -> Bool
media a b c = ((\x y z -> if ((x + y + z) / 3) >= 6 then True else False ) a b c)
