; 3-rectangle-represent.scm
(define (make-rectangle len-1 len-2 width-1 width-2)
	(cons (cons len-1 len-2)
		(cons width-1 width-2)))

(define (length-1-rectangle r)
		(car (car r)))
(define (length-2-rectangle r)
		(cdr (car r)))
(define (width-1-rectangle r)
		(car (cdr r)))
(define (width-2-rectangle r)
		(cdr (cdr r)))
		
;function test

(load "2-print-point.scm")
(load "3-perimeter-rectangle.scm")
(load "3-area.scm")

(define length-1 (make-segment(make-point 1 4)
								(make-point 4 4)))
(define length-2 (make-segment(make-point 1 2)
								(make-point 4 2)))
(define width-1  (make-segment(make-point 1 2)
								(make-point 1 4)))
(define width-2 (make-segment(make-point 4 2)
								(make-point 4 4)))
					
(define rectangle (make-rectangle length-1 length-2 width-1 width-2))
