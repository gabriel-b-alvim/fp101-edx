# Real World Haskell


## Haskell Environment

- ghc: an optimized compiler that generates fast native code
- ghci: an interative interpreter, we can use as a debugger.
- runghc: runs Haskell programs or scripts, without compiling.


## Getting started with ghci

- can't copy and paste code as is.
- to load a script/module use `ghci <file_name.hs>`
- prompt prints out current module in use
    + can be changed with `:set prompt name>` inside the ghci
        * it's common to just use `:set ghci>`
- always loaded with standard utility library Prelude.
- loading other packages with `:module <Package.Name>`


## Using ghci as a calculator

- Simple arithmetic operations can be done as usual.
- negative numbers must be encapsulated by parenthesis
    + avoids parsing ambiguity with functions
- can omit whitespace between infix operators and numbers


## Boolean logic

- **True** and **False**, capitalization is important.
- Haskell does not treat 0 and empty as False, nor nonzero as True.


## Error Messages

- **Quite common when compiling.**
- Do not panic.
- Read it carefully, it's generally really useful and good skill to acquire.


## Operator Precedence and Associativity

- Parenthesis can be used to explicitly group parts of an expression.
- To inspect precedence use `:info` on gchi.
    + `infixl:` show us precedence of a given value or function, the higher the number the higher the precedence.


## Undefined Values and Introducing Variables

- We can use `let` to define variables temporally on ghci.
- Syntax can be ghci specific.
- Haskell does not require parenthesis on parameters.


## Operation on lists

- Concatenate two lists with `++`.
- Append an element with `:`.
- Be aware of list enumeration on floating points
    + There can be a lot of surprises, so avoid it where you can.


### Strings and lines

- Strings are lists of Unicode characters
    + use double quotes to denote a string and single quotes to denote a character.
- putStrLn prints a line


## Types intro

- must always start with uppercase.
- `:set +t`  will print types of expressions on ghci
    + when sending bare expression, `it` will be declared.
    + `it` won't change if the expressions fails.
- `:unset +t` to stop printing types.
