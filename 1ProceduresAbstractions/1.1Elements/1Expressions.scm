; help function
(define (print a)
  (display a)
  (newline))

; combinations
; prefix notation
(print (+ 137 349))
(print (- 1000 334))
(print (* 5 99))
(print (/ 10 5))
(print (+ 2.7 10))

; one advantage of prefix notation
; take an arbitrary number of arguments
(print (+ 21 35 12))
(print (* 24 4 12))

; another advantage of prefix notation
; allow combinations to be nested
(print (+ (* 3 5) (- 10 6)))




