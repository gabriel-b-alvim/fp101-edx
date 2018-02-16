-- Homework will be written for exercises that require testing in Haskell

-- Exercise 1
n :: Int
n = a `div` length xs
    where
        a = 10
        xs = [1, 2, 3, 4, 5]

-- Exercise 2
-- last can be defined as
last1 :: [a] -> a
last1 xs = xs !! (length xs - 1)

last2 :: [a] -> a
last2 xs = head (reverse xs)

last3 :: [a] -> a
last3 xs = head (drop (length xs -1) xs)


-- Exercise 3
-- init can be defined as

init1 :: [a] -> [a]
init1 xs = reverse (tail (reverse  xs))

init2 :: [a] -> [a]
init2 xs = drop (length xs - 1) xs
