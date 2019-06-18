; help function
(define (print a)
  (display a)
  (newline))

; By procedure definitions, a compound operation can be given a name
; and then referred to as a unit.

; express the idea of "squaring"
(define (square x) (* x x))
(print (square 21))
(print (square (+ 2 5)))
(print (square (square 3)))

; use square as a building block in defining other procedures
(define (sum-of-squares x y)
  (+ (square x) (square y)))
(print (sum-of-squares 3 4))

; use sum-of-squares as a builing block
(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))
(print (f 5))
