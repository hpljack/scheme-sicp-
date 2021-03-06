(load "1_22.scm")
(define (femat-test n)
	(define(try-it a)
		(= (expmod a n n) a))
		(try-it (+ 1 (random (- n 1)))))
	
(define (fast-prime? n times)
	(cond ((= times 0) true)
		((femat-test n)(fast-prime? n(- times 1)))
		(else false)))

(define (expmod base exp m)
	(cond ((= exp 0) 1)
		((even? exp)(remainder (square(expmod base (/ exp 2) m)) m))
		(else
			(remainder(* base (expmod base (- exp 1) m))m))))
		
(define (prime? n)
	(fast-prime? n 10))
	
(load "primer.scm")