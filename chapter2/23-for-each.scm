(load "map-test.scm")
(define (for-each proc items)
		(map proc items))
		
;;;function test
(for-each (lambda(x)(newline)(display x))
		(list 3 5 4))
		
(for-each (lambda(x)
			(newline)
			(if (> x 0)
				(display "True")
				(display "False")))
		(list -2 3 4))
		

(define (for-each p items)
	(if (null? items)
			'()
			(cons (p (car items))
				(for-each p (cdr items)))))
				
;;;function test				
(for-each (lambda(x)(newline)(display x))
		(list 34 -4 65))
		
(define (for-each p items)
	(cond ((not (null? items))
			(p (car items))
			(for-each p (cdr items)))))
			
(for-each (lambda(x)(newline)(display x))
		(list 34 -4 65))
				
				
