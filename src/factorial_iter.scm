(define (factorial n)
	(fact-iter 1 1 n))
(define (fact-iter product counter max_count)
	(if (> counter max_count)
		product
		(fact-iter (* counter product)
				(+ counter 1)
				max_count)))
				
(define (fact n)
	(define (iter product counter)
		(if (> counter n)
			product
			(iter (* counter product)
				(+ counter 1))))
(iter 1 1))