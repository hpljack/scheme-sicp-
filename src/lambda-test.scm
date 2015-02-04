(load "32-sum.scm")
(define (pi-sum a b)
	(sum (lambda (x)(/ 1.0 (* x(+ x 2))))
		a
		(lambda(i)(+ i 1))
		b))
		
(define (integral f a b dx)
	(* (sum f
			(+ a (/ dx 2.0))
			(lambda(x)(+ x dx))
			b)
		dx))