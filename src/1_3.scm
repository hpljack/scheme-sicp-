(define (square x)(* x x))

(define (max_two x y z)
	((if (and (<= x y)(<= x z))
		(+ (square y)(square z))
		(max_two y z x)
		))
	)
	
(max_two 2 3 4)