; helper function
(define (print a)
  (display a)
  (newline))

; The problem in sqrt is a user should not need to know 
; how the procedure is implemented in order to use it.
; To the user, the procedure should be a black box.

; rewrite the sqrt procedure using block structures as follows,
(define (sqrt x)
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

  (sqrt-iter 1.0 x))
(print (sqrt 9))

; we allow x to be free variable in the internal definitions,
; as shown below.
(define (sqrt x)
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  
  (define (good-enough? guess)
    (< (abs (- (* guess guess) x)) 0.001))
  
  (define (improve guess)
    (average guess (/ x guess)))
  (define (average x y)
    (/ (+ x y) 2))

  (sqrt-iter 1.0))
(print (sqrt 9))
