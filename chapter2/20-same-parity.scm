(define (same-parity sample others)
	(filter(if (even? sample)
				even?
				odd?)
			(cons sample others)))
			
;;;function test
(same-parity 1 (list 2 4 3))
