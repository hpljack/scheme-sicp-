(define (list-ref items n)
	(if (= n 0)
			(car items)
			(list-ref (cdr items) (- n 1))))
(define squares (list 1 4 5 67 3 55))

;;;function test
(list-ref squares 3)

		
(define (length items)
	(if (null? items)
		0
		(+ 1 (length (cdr items)))))
(define odds (list 3 43 45 5))
;;; function test
(length odds)

(define (length items)
	(define (len-iter a count)
		(if (null? a)
			count
			(len-iter (cdr a)(+ 1 count))))
	(len-iter items 0))
	

(define (append list1 list2)
	(if (null? list1)
		list2
		(cons (car list1)(append (cdr list1) list2))))

		