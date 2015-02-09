(load "5-cons.scm")
(define (cdr z)
  (if (= 0(remainder z 3))
      (+ 1(cdr (/ z 3)))
      0))
;;;function test
(define x(cons 3 4))
(cdr x)
      
