(define (reverse items)
	(define (iter remained-items result)
		(if (null? remained-items)
				result
			(iter (cdr remained-items)(cons (car remained-items) result))))
	(iter items '()))
	
;;;function test
(define x (list  1 2 3 4 5 6 7 8))
;(display "reverse x")
(reverse x)
