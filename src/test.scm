(define (max x y)
	(if (> x y)
		x 
		y)
	)
	
( + 5 3 4)
(- 9 1)
(/ 6 2)
(+ (* 2 4) (- 4 6))
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
(= a b)
(if (and (> b a) (< b (* a b)))
	b
	a)
(cond ((= a 4) 6)
	  ((= b 4)(+ 6 7 1))
	  (else 25)
)
(+ 2 (if (> b a) b a)

(* (cond ((> a b) a)
		 ((< a b) b)
		 (else -1))
		 (+ a 1))	
		 
(/(+ 5 4(- 2 (- 3 (+ 6 (/ 4 5)))))
(* 3 (- 6 2)(- 2 7)))

(define (sqrt_iter guess x)
	(if (good_enough? guess x)
	guess
	(sqrt_iter(improve guess x)
		x)))
		
(define (improve guess x)
	(average guess(/ x guess)))
	
(define (average x y)
	(/ (+ x y) 2))

(define (good_enough ? guess x)
	(< (abs(- (square guess) x)) 0.001))

(define (sqrt x)
	(sqrt_iter 1.0 x))

(define (abs x)(if (> x 0) x (- x)))

(define (square x)(* x x))

(define (new-if predicate then-clause else-clause)
	(cond(predicate then-clause)
		(else else-clause)))
		
(define (sqrt_iter guess x)
	(new-if (good_enough? guess x)
		guess	
		(sqrt_iter(improve guess x) x)))



