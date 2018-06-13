invert :: [t] -> [t]
invert [] = []
invert (x:xs) = invert xs++[x]