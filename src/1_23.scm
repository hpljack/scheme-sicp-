(define (next n)
	(if (= n 2)
		3
		(+ n 2)))
		
(load "primer.scm")
(load "square.scm")

(define (find-divisor n test-divisor)
	(cond ((> (square test-divisor) n) n)
		((divides? test-divisor n) test-divisor)
		(else 
			(find-divisor n (next test-divisor)))))

(load "1_22.scm")

			