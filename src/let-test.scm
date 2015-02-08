((lambda (x y z)(+ x y (square z))) 1 2 3)
(define (f x y)	
	(define (f-helper a b)
			(+ (* x (square a))
				(* y b)
				(* a b)))
	(f-helper (+ 1 (* x y))(- 1 y)))
	
(define (f1 x y)
	((lambda(a b)
		(+ (* x(square a))
			(* y b)
			(* a b)))
	(+ 1(* x y))(- 1 y)))
	
(define (f2 x y)
	(let ((a (+ 1 (* x y)))
			(b (- 1 y)))
	(+ (* x (square a))
		(* y b)
		(* a b))))
		
(define (f3 x y)
	(let ((a (+ 1 (* x y)))(b (- 1 y)))
	(+ (* x (square a))
		(* y b)
		(* a b))))