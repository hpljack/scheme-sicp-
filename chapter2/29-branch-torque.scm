(load "29-branch-length-and-branch-structure.scm")
(load "29-total-weight.scm")

(define (branch-torque branch)
	(* (branch-length branch)
		(branch-weight branch)))
		