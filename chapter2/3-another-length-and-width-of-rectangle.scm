(load "2-segment.scm")
(load "3-another-rectangle-represent.scm")
(define (length-of-rectangle r)
	(let ((length (length-rectangle r)))
		(let ((start (start-segment length))
			(end(end-segment length)))
			(- (x-point end)
				(x-point start)))))
(define (width-of-rectangle r)
	(let ((width (width-rectangle r)))
		(let ((start (start-segment width))
			(end (end-segment width)))
			(- (y-point end)
				(y-point start)))))
				
;function test
(define l (make-segment (make-point 1 2)
					(make-point 4 2)))
(define w (make-segment(make-point 1 2)
					(make-point 1 4)))
(define r (make-rectangle l w))

(load "3-perimeter-rectangle.scm")
(load "3-area.scm")
