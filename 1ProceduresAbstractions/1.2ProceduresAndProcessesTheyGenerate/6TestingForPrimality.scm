; helper function
(define (print a)
  (display a)
  (newline))

; two methods for checking the primality of an integer n.

; 1. searching for divisors
; the number of steps have order of growth theta of sqrt(n).
(define (prime? n)
  (define (smallest-divisor n)
    (find-divisor n 2))
  (define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n (+ test-divisor 1)))))
  (define (divides? a b) (= (remainder b a) 0))
  (= n (smallest-divisor n)))
(print (prime? 13))
(print (prime? 169))

; 2. the Fermat test
; the number of steps have order of growth theta of log(n).

