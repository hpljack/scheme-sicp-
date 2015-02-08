(load "37-iter-cont-frac.scm")
(define (golden-ratio k)
  (+ 1
     (cont-frac(lambda(i) 1.0)
	       (lambda(i) 1.0)
	       k)))
