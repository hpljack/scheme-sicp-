(define (make-rectangle len width)
	(cons len width))
(define (length-rectangle r)
	(car r))
(define (width-rectangle r)
	(cdr r))
	