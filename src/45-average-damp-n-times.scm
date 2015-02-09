(load "43-repeated.scm")
(load "average-damp.scm")

(define (average-damp-n-times f n)
	((repeated average-damp n) f))