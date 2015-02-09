(load "45-damped-nth-root.scm")
(load "45-lg.scm")

(define (nth-root n)
	(damped-nth-root n (lg n)))
	
;test

(define sqrt(nth-root 2))
(define cube-root(nth-root 3))
(define 4th-root(nth-root 4))