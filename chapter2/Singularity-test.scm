(define (f x)
	(if (= x 0)
		(display "00")
		(display(/ 1.0 x))))
		

(define (test-f s e)	
	(cond ((< s e)(f s))
		(else (test-f (+ s 1) e))))
;;; function test

