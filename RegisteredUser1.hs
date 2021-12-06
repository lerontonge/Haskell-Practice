
newtype Username = Username String

newtype Accountnumber = Accountnumber Integer

data User = UnregisteredUser | RegisteredUser Username Accountnumber

printUser :: User -> IO()

printUser UnregisteredUser = putStrLn "UnregisteredUser"
printUser (RegisteredUser (Username name) (Accountnumber acctNum)) =
    putStrLn $ name ++ " " ++ show acctNum





    