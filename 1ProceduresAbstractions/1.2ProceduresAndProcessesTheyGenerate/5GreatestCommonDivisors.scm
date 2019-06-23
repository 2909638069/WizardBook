; helper function
(define (print a)
  (display a)
  (newline))

; gcd of integers a and b is defined to be the largest integer
; that divides both a and b with no remainder.

; Euclid's Algorithm is efficient.
; gcd(206,40) = gcd(40,6) = gcd(6,4) = gcd(4,2) = gcd(2,0) = 2
(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))
(print (gcd 206 40))

