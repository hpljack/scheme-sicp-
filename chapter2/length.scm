(define (length x)
	(if (null? x)
		0
		(+ 1 (length (cdr x)))))

;;;function test
(define x(cons (list 1 2)(list 3 5)))
(define y (cons (list 1 2)(cons (list 4 5)(list 6 7))))
(length x)
(length y)
(define z 
	(cons (list  1 2 3)
		(cons (list 3 4 5)
			(cons (list 6 7 8)(list 4 5 5 9)))))
(length z)
			