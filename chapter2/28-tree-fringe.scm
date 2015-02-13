(define (tree-fringe tree)
	(define (iter items result)
		(cond ((null? items) result)
			((not (pair? items)) (append result (list items)))
			(else
				(iter (cdr items)(iter (car items) result)))))
	(iter tree '()))
	