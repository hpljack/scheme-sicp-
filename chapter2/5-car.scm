(define (car z)
  (if (= 0 (remainder z 2))
      (+ 1(car (/ z 2)))
      0))
;;;function test
(load "5-cons.scm")
(define x(cons 3 2))
(car x)
