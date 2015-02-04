(load "33-filter-accumulate.scm")
(load "primer.scm")

(define (primes-sum a b)
	(filter-accumulate	+
						0
						(lambda(x)x)
						a
						(lambda(i) (+ i 1))
						b
						prime?))
						