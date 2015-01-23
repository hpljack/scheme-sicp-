(define (sum_gp a0 r n)
	(* a0
		(if (= r 1)
			n
			(/(- 1 (expt r n)) (- 1  r)))
		)
)

(define (abs x)
	((if (>= x 0)
			x
			(- x)))
	)
	
(define (Reciprocal x)(
	(if (!= x 0))))