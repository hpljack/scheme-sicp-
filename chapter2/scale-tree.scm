(define (scale-tree tree factor)
	(cond ((null? tree) '())
		((not (pair? tree)) (* tree factor))
		(else
			(cons (scale-tree (car tree)factor)
				(scale-tree (cdr tree) factor)))))
;;;function test
(define x (scale-tree (list 1 (list 2(list 3 4) 5)(list 6 7)) 10))

(define (scale-tree tree factor)
	(map (lambda (sub-tree)
		(if (pair? sub-tree)
			(scale-tree sub-tree factor)
				(* sub-tree factor)))
				tree))
;;; function test
(define y (scale-tree (list 2 (list 3 (list 4 5) 6) (list 7 8 )) 11))