(define (square-list items)
	(if (null? items)
		'()
		(cons (* (car items)(car items))
			(square-list (cdr items)))))
;;; function test
(square-list (list 1 2 3 4))

(load "map-test.scm")
(define (square-list items)
	(map square items))

;;; function test
(square-list (list 3 4 5))