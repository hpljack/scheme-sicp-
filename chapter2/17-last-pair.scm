(define (last-pair items)
	(cond ((null? items)
			(error "list empty--- LAST-PAIR"))
		  ((null? (cdr items))
			items) ;;;the list of one item in list,not the item, so do not use (car items)
		   (else 
				(last-pair (cdr items)))))
;;;function test
(last-pair (list 3 5 54))