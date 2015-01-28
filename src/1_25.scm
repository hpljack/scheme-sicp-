(load "fast_expt.scm")

(define (expmod base exp m)
	(remainder (fast_expt base exp) m))