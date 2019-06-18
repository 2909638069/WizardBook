; helper function
(define (print a)
  (display a)
  (newline))

; consider computing the sequence of Fibonacci numbers
; 0, 1, 1, 2, 3, 5, 8, 13, 21, ...

; tree recursive process
(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
                 (fib (- n 2))))))
(print (fib 8))

; iterative process
; a <- a + b
; b <- a
(define (fib n)
  (define (fib-iter a b count)
    (if (= count 0)
        b
        (fib-iter (+ a b) a (- count 1))))
  (fib-iter 1 0 n))
(print (fib 8))




; Counting change
; compute the number of ways to change any given amount of money

; a simple solution as a recursive procedure
; The number of ways to change amount a using n kinds of coins equals
; the number of ways to change amount a using all but the first kind of coin,
; plus
; the number of ways to change amount a-d using all n kinds of coins, where
; d is the denomination of the first kind of coin.
; It is divided into two groups:
; those that do not use any of the first kind of coin, and those that do.
(define (count-change amount)
  (define (cc amount kinds-of-coins)
    (cond ((= amount 0) 1)
          ((or (< amount 0) ( = kinds-of-coins 0)) 0)
          (else (+ (cc amount (- kinds-of-coins 1))
                   (cc (- amount 
                          (first-denomination kinds-of-coins))
                       kinds-of-coins)))))
  (define (first-denomination kinds-of-coins)
    (cond ((= kinds-of-coins 1) 1)
          ((= kinds-of-coins 2) 5)
          ((= kinds-of-coins 3) 10)
          ((= kinds-of-coins 4) 25)
          ((= kinds-of-coins 5) 50)))
  (cc amount 5))
(print (count-change 100))
