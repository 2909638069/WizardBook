; helper function
(define (print a)
  (display a)
  (newline))

; compute b^n

; linear recursive
; b^n = b * b^(n-1)
; b^0 = 1
; theta of n steps and theta of n space
(define (expt b n)
  (if (= n 0)
      1
      (* b (expt b (- n 1)))))
(print (expt 2 3))

; linear iteration
; theta of n steps and theta of 1 space
(define (expt b n)
  (define (expt-iter b counter product)
    (if (= counter 0)
        product
        (expt-iter b (- counter 1) (* product b))))
  (expt-iter b n 1))
(print (expt 2 3))

; via successive squaring
; theta of log(n) steps and theta of log(n) space
;(define (square x) (* x x))
(define (even? x) (= remainder x 2) 0)
(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))
(print "fast-expt")
(print (fast-expt 2 3))
