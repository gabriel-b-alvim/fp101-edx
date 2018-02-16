# FP101 - Intro to Functional Programming - Part 1


## Haskell

* Pure functional programming language.
* Small syntax, but really steep learning curve.
* Immutable and strongly typed (contains really good type inference).
* Creates a lot of temporary data, but has a really efficient GC.

**It will be the vehicle for this course.**


## Software Crisis 

* Higher and higher complexity of code needed to make software, needs a higher level of abstraction.
* Implementing the Lambda Calculus
    - Most modern languages have this natively in the form of Lambda Expressions.


## What is a Functional Programming Language

There are several definitions and some discussion on this topic, but we define as two:

* We program using mathematical functions (pure and classic definition).
* Style of programming where expressions are more important than statements.
    - A very good example are lambda expressions.

## History of FP

* 1930's: Lambda Calculus is created to describe the foundations of mathematics.
* 1950's: Lisp, lambda calculus + variable assigments
* 1960's: ISWIM, first pure f.p. language.
* 1970's:
    - ML: hybrid between functional and imperative. Used for writing mathematical proofs without too much boilerplate code.
        + Creation of type inference.
        + Polymorphic types
    - FP is created and emphasizes higher order functions.
* 1970's-1980's: Lazy functional languages start to appear.
* 1987: Haskell is born is Glasgow. Built to experiment on type systems.
    - 2003: Haskell 98 report is published to create a stable version.

## An example of Haskell code

Sorting a list using quicksort

```haskell
f [] = []
f (x:xs) = f ys ++ [x] ++ f zs
    where
        ys = [a | a <- xs , a <= x]
        zs = [b | b <- bs , b > x]
```

## Function Application 

### Mathematics

Function application is denoted using parenthesis, while multiplication is denoted using whitespace. This is done because in physics multiplication happens way more often than any other mathematical function, and calculus has its roots on physics.

`f(a,b) + c d`

### Haskell

Function application is denoted using whitespace, while multiplication is denoted using * . Since functions are written way more often, it makes more sense to reduce code bloat this way.

`f a b + c * d`

Also function application takes priority in the equation execution.

## Haskell Scripts (programs)

* `.hs` suffix
* Functions are defined withing a script.
* Infix is done by ´´
* Functions are named starting with lowercase and using camel case afterwards.
* Whitespace indentation is significant, denoting implicit grouping. Much like Python.


