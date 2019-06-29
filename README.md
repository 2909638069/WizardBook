# notes and codes on Structure and Interpretation of Computer Programs

## Chapter 1 Building Abstractions with Procedures

We are about to study the idea of a computational process, which is indeed
much like a sorcerer's idea of a spirit. The programs we use to conjure
processes are like a sorcerer's spells. Programming language prescribe the
tasks we want our processes to perform.

## Chapter 2 Building Abstractions with Data

In this chapter we are going to look at more complex data, which means that
we build abstractions by combining data objects to form compound data.

## Chapter 3 Modularity, Objects, and State

We need strategies to help us structure large systems so that they will be
modular, that is, so that they can be divided "naturally" into coherent parts
that can be separately developed and maintained.

One powerful design strategy is to base the structure of our programs on the
stucture of the system being modeled.

In this chapter we will investigate two prominent organizational strategies
arising from two rather different "world view" of the structure of systems.
The first one concentrates on objects, viewing a large system as a collection
of distinct objects whose behaviors may change over time. An alternative one
concentrates on the streams of information that flow in the system, much as
an electrical engineer views a signal-processing system.

## Chapter 4 Metalinguistic Abstraction

Programming is endowed with a multitude of languages.Physical languages are
concerned with the representation of data and control in terms of individual
bits of storage and primitive machine instructions. High-level languages have
means of combination and abstraction that are appropriate to the larger-scale
organization of systems.

As we confront increasingly complex problems, any fixed programming language
is not sufficient for our needs. We can often enhance our ability to deal with
a complex problem by adopting a new language that enables us to describe the
problem in a different way, using primitives, means of combination, and means of
abstraction that are particularly well suited to the problem at hand.

Metalinguistic abstraction means establishing new languages. We can implement
new languages by constructing evaluators. An evaluator (or interpreter) for a
programming language is a procedure that, when applied to an expression of the
language, performs the actions required to evaluate that expression.

We come to see ourselves as designers of new languages, rather than only users.
In this chapter, we shall use Lisp as a base, implementing evaluators as Lisp
procedures. The language implemented by our evaluator will be a subset of the
Scheme dialect of Lisp.

## Chapter 5 Computing with Register Machines

In order to provide a more complete description of the contrl structure of the
Lisp evaluator, we must work at a more primitive level than Lisp itself.

In this chapter we will describe processes in terms of the step-by-step operation
of a traditional computer. Such a computer, or register machine, sequentially
executes instructions that manipulate the contents of a fixed set of storage
elements called registers.

We will examine several Lisp procedures and design a specific register machine to
execute each procedure. Thus, we will approach our task from the perspective of a
hardware architect rather than that of a machine-language computer programmar.
