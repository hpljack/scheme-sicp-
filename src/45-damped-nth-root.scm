(load "fixed-point.scm")
(load "45-expt.scm")
(load "45-average-damp-n-times.scm")

(define (damped-nth-root n damp-times)
	(lambda(x)
		(fixed-point
			(average-damp-n-times
				(lambda(y)
					(/ x(expt y (- n 1))))
				damp-times)
			1.0)))
			
;test funtion

(define sqrt(damped-nth-root 2 1))
(sqrt (* 3 3))

(define cube-root(damped-nth-root 3 1))
(cube-root (* 3 3 3))

(define 4th-root(damped-nth-root 4 2))
(4th-root(* 3 3 3 3))