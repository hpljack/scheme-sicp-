(load "18-reverse.scm")
(define (square-list items)
	(define (iter things answer)
		(if (null? things)
			answer
			(iter (cdr things)
				(cons (square (car things)) answer))))
	(iter (reverse items) '()))

;;; function test
(square-list (list 1 2 3))