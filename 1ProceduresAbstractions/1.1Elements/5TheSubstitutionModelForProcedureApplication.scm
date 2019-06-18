; We can assume that the mechanism for applying primitive procedures
; to arguments is built into the interpreter. For compound procedures,
; the application process is as follows:
; evaluate the body of the procedure with each formal parameter 
; replaced by the corresponding argument.

; The process given above is called the substitution model for 
; procedure application. There are 2 points:
; 1. The substitution is not a description of how the interpreter 
; really works.
; 2. The substitution is a way to get started thinking formally
; about the process application.

; The "evaluate the arguments and then apply" method that 
; the interpreter actually uses is called applicative-order evaluation.
; The alternative "fully expand and then reduce" method is known as
; normal-order evaluation.
