{-
#Standard

    <http://www.haskell.org/haskellwiki/Language_and_library_specification>
-}

-- TODO how to get an assert function working!?!?!?!?!?!!?!??
-- import Control.Exception -- assert

import System.Exit -- exitSucess

-- assert :: Bool -> Maybe (IO ())
-- assert False = Just $ error "Assertion failed!"
-- assert _     = Nothing

{-
# Comments
-}

-- single line comment

{-
Multi
line
comment.
-}

{-
#Functions

    There is no distinction between functions and variables.
-}

f = 1

-- ERROR: multiple declarations for f.
--f = 1

{-
#Type declaration

    You can give an optional type declaration to functions.

    It has no effect on the language, and only sever to document.

    The last type is the return.

    Reason: space is function application.
-}

hasTypeDecl :: Int
hasTypeDecl = 1

hasTypeDeclSum :: Int -> Int -> Int
hasTypeDeclSum x y = x + y

-- ERROR: no instance for (Num Char)
--hasWrongTypeDecl :: Char
--hasWrongTypeDecl = 1

{-
#Class constraint

    Require a type to be of a class (implement a Java-like interface.)

#Typeclass

    Name of a Java-like interface.
-}

{-
#Pattern matching

    Creates multiple if cases for function arguments.
-}

intToChar :: Int -> String
intToChar 1 = "one"
intToChar 2 = "two"
intToChar x = "other"

main = do
    putStrLn "a"
    putStrLn(intToChar 1)
    {-assert False $ 0-}
    assert True

{-
#if #else

Every if must have an else, because everything must return a value.
-}

{-
#function
-}
