(load "31-iter-product.scm")
(define (inc x)(+ x 1))
(define (dec x)(- x 1))
(define (f x)
	(* (/ (dec x) x)
		(/ (inc x) x)))
(define (plus-2 x)(+ x 2.0))
(define (pi n)
	(* 4 
		(product f 3.0 plus-2 n)))
		