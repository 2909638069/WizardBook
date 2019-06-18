; To evaluate a combination, the interpreter do the following:
; 1. Evaluate the subexpressions of the combination.
; 2. Apply the procedure that is the value of the leftmost
; subexpression (the operator) to the arguments that are 
; the values of the other subexpressions (the operands).

; First, observe that the first step is recursive in nature.
; Notice how succinctly the idea of recursion can be used to
; express a deeply nested combination.

; Next, observe that the repeated application of the first step
; brings us to the point where we need to evaluate primitive
; expressions by stipulating that
; a. the values of numerals are numbers,
; b. the values of built-in operators are the machine instruction
; sequences, and
; c. the values of other names are the objects associated with
; those names in the environment.

; Notice the rules given above does not handle definitions.
; Such exceptions to the general rules are called special forms.

