-- variavel anonima representada por _ (underscore)
andii :: Bool -> Bool -> Bool
andii False _ = False
andii _ False = False
andii True True = True