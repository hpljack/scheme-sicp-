(load "2-point.scm")
(define (make-segment start-point end-point)
	(cons start-point end-point))
(define (start-segment seg)
	(car seg))
(define (end-segment seg)
	(cdr seg))

	