; 3-perimeter-rectangle.scm

(define (perimeter-rectangle r)
	(let ((len (length-of-rectangle r))
			(width(width-of-rectangle r)))
		(*  2(+ len width))))
		