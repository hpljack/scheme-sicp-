(define(sqrt_iter guess x)
	(if(good-enough? guess x)
		guess	
		(sqrt_iter (improve guess x) x)
		)
	)
	
(define (good-enough? guess x)
	(< (abs(- (square guess) x)) 0.001))
	
(define (improve guess x)
	(average guess(/ x guess)))
	
(define (average x y)
	(/(+ x y) 2))

(define (abs x)
	(if (> x 0)
		x
		(- x))
	)

(define (sqrt x)
	(sqrt_iter 1.0 x))

(define (square x)(* x x))
