module MyLib (doSomething) where

fib :: Integral b => Int -> b
fib n = round $ phi ** fromIntegral n / sq5
  where
    sq5 = sqrt 5 :: Double
    phi = (1 + sq5) / 2

doSomething :: IO Int
doSomething = do
  putStrLn "doing some thing"
  return $ fib 42

foreign export ccall doSomething :: IO Int
