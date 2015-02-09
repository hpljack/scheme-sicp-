(define (cons x y)
  (define (dispatch m)
    (cond ((= m 0) x)
	  ((= m 1) y)
	  (else(error"Argument not 0 or 1 -- CONS" m))))
  dispatch)
(define (car z)(z 0))
(define (cdr z)(z 1))

;;;function test
((cons 2 3)0)
((cons 9 3)1)
