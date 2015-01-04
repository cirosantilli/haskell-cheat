{-
#Standard

    <http://www.haskell.org/haskellwiki/Language_and_library_specification>
-}

import System.Exit -- exitSucess
import Control.Exception

f = return ()

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

noArgs = 1

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

sum :: Int -> Int -> Int
sum x y = x + y

sub :: Int -> Int -> Int
sub x y = x - y

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

{-
#main

Main has to return an `IO ()`.

The following all fail:

    main = 1
    main = True
-}
main = do
    assert True f
    --assert False f

    {-
    #Dollar sign

        a $ b c == a (b c)
    -}
    assert ((sub 3 $ sub 2 1) == 2) f
    {-assert ((sub 3 sub 2 1) == 1) f-}

{-
#if #else

Every if must have an else, because everything must return a value.
-}

{-
#function
-}
