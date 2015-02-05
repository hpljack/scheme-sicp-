(load "36-fixed-point.scm")

(define (golden-ratio)
	(fixed-point (lambda (x)(+ 1 (/ 1 x))) 1.0))
	
(define (show-golden-ratio)(golden-ratio))

(define (show-Number x)(display "x"))