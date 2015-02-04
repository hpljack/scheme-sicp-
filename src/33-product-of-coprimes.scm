(load "33-coprime.scm")
(load "33-filter-accumulate.scm")

(define (product-of-coprimes n)
	(filter-accumulate *
					1
					(lambda(x)x)
					1
					(lambda(i)(+ i 1))
					n
					(lambda(x)(coprime? x n))))