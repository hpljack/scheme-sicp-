(define (tree-reverse lst)
	(define (iter remainded-items result)
			(if (null? remainded-items)
					result
				(iter (cdr remainded-items)
						(cons (if (pair? (car remainded-items))
								(tree-reverse (car remainded-items))
									(car remainded-items))
										result))))
	(iter lst '()))