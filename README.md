# Haskell Cheat

Fun only to see how a pure functional language is like.

Official tutorial list:

<http://www.haskell.org/haskellwiki/Tutorials>

-   <http://book.realworldhaskell.org/read>

    Good O'Reilly published tutorial.

## Type inference

Haskell compiles, but infers the type of any expression.

This allows you not to write huge namespaced types like in C++.

This is somewhat the path that C++ is just now starting to take with features like `auto`.

## Pure

Haskell strongly encourages you to separate pure from impure code.

Pure code cannot have state. E.g., the output of a function can depend only on  it's input, and the function cannot have side effects like writing to a file or setting a global variable.

This says a lot about the function. For example, if you know that a function has signature:

    Bool -> Bool

Then there are only 4 possible functions:

- True constant
- False constant
- negator
- identity

In a language like C, this is of course not possible since the output of the function can depend on global variables.

## Package management

Central archive: Hackage <http://hackage.haskell.org/>

Function search engine: Hoogle <http://www.haskell.org/hoogle/>

## GHC

## Glorious Haskell Compiler

Main compiler.

Manual: <http://www.haskell.org/ghc/docs/latest/html/users_guide/>
