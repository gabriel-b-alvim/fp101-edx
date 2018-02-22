# FP101 - Intro to Functional Programming - Week2

# Classes and Types

"How to group values with others that are related."


## Type

- a name for a collection of related values.
    + Ex: `Bool` contains `True` and `False`.
- applying a function to wrong types generates a type error.
- Haskell is Statically  Typed 
    + the type errors will appear on compile time.
    + Dynamically typed languages check errors at run time.
- Haskell also has Type Inference
    + types that are not explicitly given will be found by the compiler.
    + `:t` tells you the type of something in ghci
    + consistent and good for exploring types and typeclasses
    + normally the compiler will be better at inferring more complex types than we are.


## List types

-  a sequence of values of the same type.
-  denoted as `[t]` for a list of a given type `t`
-  length is not denoted the type notation.


## Tuple types

- a sequence of elements of up to n types t.
- denoted as `(t1, t2, ..., tn)`
- length is denoted in the type notation
- Tuples of two (pairs) and three (triples) are the most commonly used and have a number of pre-defined functions to operate on them.

## Function types

- a function is a mapping from values of one type to a value of another type.

```haskell
func :: a -> b
```
*func maps from a to b*

- the arguments and result types are unrestricted.
- for multiple results, we can use tuples.

### Curried Functions

From the Wiki
> [...] currying is the technique of translating the evaluation of a function that takes multiple arguments (or a tuple of arguments) into evaluating a sequence of functions, each with a single argument. Currying is related to, but not the same as, partial application.

- in Haskell, functions of multiple arguments are automatically curried.
    + arguments are taken in sequence and each time they return the function one less argument.

```haskell
add' :: Int -> Int -> Int
add' x y = x + y

-- an example 
-- add' 1 = add1'
add1' y = 1 + y
```

- Haskell allow us then to partially apply a function without extra effort. Thus we can make them more flexible and more reusable.
    + A good application would be to make a function that is context dependent, but you abstract it as arguments that can be partially applied on each context.
- Haskell is optimized for this.

### Polymorphic Function

- A Function is called polymorphic if its type contains one or more type variables

```haskell
legnth :: [a] -> Int
```

- `a` is a type variable, it's implicitly quantified and always defined as lowercase on the first letter.
    + it means that for a list of *any type*, length will return an integer
    + `a` can be limited using classes. It's called overloading.


###  Overloaded Function

- a polymorphic function is called overloaded if it's type contain one or more class constraints.

```haskell
sum :: Num a => [a] -> a
```

- for any numeric type a, sum takes a list of values of type a and returns a value of type a


## Class

- Similar to interface
- A group of types that are related to each other.
- You can define your own type Class
- The basic are
    + Num - numeric types
    + Eq - equality types
    + Ord - ordered types


 
