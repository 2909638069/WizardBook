; helper function
(define (print a)
  (display a)
  (newline))

; consider the factorial function
; n = n * (n-1) * (n-2) ... 3 * 2 * 1

; linear recursive process
; One way is to make use of the observation that
; n! = n*((n-1)!)
(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))
(print (factorial 6))

; linear iteractive process
; A different perspective
; n! = 1 * 2 ... *n
; product <- counter * product
; counter <- counter + 1
(define (factorial n)
  (define (fact-iter product counter max-count)
    (if (> counter max-count)
        product
        (fact-iter (* counter product)
                   (+ counter 1)
                   max-count)))
  (fact-iter 1 1 n))
(print (factorial 6))
