; helper function
(define (print a)
  (display a)
  (newline))

; How does one compute square roots?
; The most common way is to use Newton's method of
; successive approximations, which says that
; whenever we have a guess y for the value of the square
; root of the number x, we can perform a simple manipulation
; to get a better guess, by averaging y with x/y.

; the basic strategy
; notice that the rpocedure is recursive.
; The problem breaks up naturally into a number of subproblems.
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (* guess guess) x)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))
(define (average x y)
  (/ (+ x y) 2))

; finally, we need a way to get started
(define (sqrt x)
  (sqrt-iter 1.0 x))

(print (sqrt 9))
