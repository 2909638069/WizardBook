; helper function
(define (print a)
  (display a)
  (newline))

; case analysis
; cond stands for conditional
(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))
(print (abs -12))
(print (abs 10))

; another way to write the absolute-value procedure
(define (abs x)
  (cond ((< x 0) (- x))
        (else x)))
(print (abs -12))
(print (abs 10))

; the third way
(define (abs x)
  (if (< x 0)
      (- x)
      x))
(print (abs -12))
(print (abs 10))

; In addition to primitive predicates such as <, =, and >,
; there are logical composition operations.
; The 3 most frequently used are these:
; (and <e1> ... <en>)
; (or <e1> ... <en>)
; (not <e>)
(define (>= x y)
  (or (> x y) (= x y)))
(print (>= 15 12))
(print (>= 15 15))
(print (>= 12 15))

(define (>= x y)
  (not (< x y)))
(print (>= 15 12))
(print (>= 15 15))
(print (>= 12 15))
