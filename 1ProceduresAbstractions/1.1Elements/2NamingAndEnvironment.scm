; help function
(define (print a)
  (display a)
  (newline))

; name things with define
(define size 2)
(print size)

; define allow us to use simple names to refer to
; the result of compound operations.
(define pi 3.14159)
(define radius 10)
(define circumference (* 2 pi radius))
(print circumference)

; the interpreter must maintain some sort of memory 
; that keeps track of the name-object pairs.
; This memory is called the environment.
