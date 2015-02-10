(define (scale-list items factor)
	(if (null? items)
		'() 
		(cons (* (car items) factor)
			(scale-list (cdr items) factor))))
;;; function test
(scale-list (list 1 2 3 4 5) 10)

(define (map proc items)
	(if (null? items)
		'()
		(cons (proc (car items))
			(map proc (cdr items)))))

;;; function test
(map abs (list -10 2 -34 30 6))
(map (lambda(x)(* x x)) 
	(list 1 2 3 4))
