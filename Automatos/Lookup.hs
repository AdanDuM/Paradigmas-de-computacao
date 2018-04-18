import Prelude hiding (lookup)
import Data.Map

employeeDept = fromList([("John","Sales"), ("Bob","IT")])
deptCountry = fromList([("IT","USA"), ("Sales","France")])
countryCurrency = fromList([("USA", "Dollar"), ("France", "Euro")])

employeeCurrency :: String -> Maybe String
employeeCurrency name = do
    dept <- lookup name employeeDept
    lookup dept deptCountry
    --lookup country countryCurrency

main = do
    putStrLn $ "John's currency: " ++ (show (employeeCurrency "John"))
    putStrLn $ "Pete's currency: " ++ (show (employeeCurrency "Pete"))
--The output of this program:

--  John's currency: Just "Euro"
--  Pete's currency: Nothing
