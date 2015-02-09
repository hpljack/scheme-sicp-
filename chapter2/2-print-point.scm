(load "2-midpoint-segment.scm")

(define (print-point p)
	(newline)
	(display "(")
	(display (x-point p))
	(display ",")
	(display (y-point p))
	(display ")"))
	
;function test

(define start (make-point  1 3))
(define end (make-point 4 3))
(define seg (make-segment start end))
(define mid (midpoint-segment seg))
(print-point mid)