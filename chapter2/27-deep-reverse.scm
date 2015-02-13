(load "18-reverse.scm")
(define (deep-reverse tree)
	(cond ((null? tree) ;empty tree
		'())
		((not (pair? tree));leaf
			tree)
		(else
			(reverse (list (deep-reverse (car tree)) 
						(deep-reverse (cadr tree)))))))
				
						
