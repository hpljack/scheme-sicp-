(load "1-make-rat.scm")

(define (make-rat n d)
	(cond ((and (> n 0)(> d 0)) (cons n d))
		  ((and (< n 0)(< d 0)) (cons (- n)(- d)))
		  (else	
			(cons (- (abs n))(abs d)))))
			
;function test

(print-rat(make-rat -1 2))
(print-rat(make-rat -2 -3))
(print-rat(make-rat 2 -3))
