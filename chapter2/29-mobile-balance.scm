(load "29-left-branch-and-right-branch.scm")
(load "29-branch-length-and-branch-structure.scm")
(load "29-branch-torque.scm")

(define (mobile-balance? mobile)
	(let ((left (left-branch mobile))
			(right (right-branch mobile)))
		(and 
			(same-torque? left right)
				(branch-balance? left)
				(branch-balance? right))))
(define (same-torque? left right)
	(= (branch-torque left)
		(branch-torque right)))
(define (branch-balance? branch)
	(if (hangs-another-mobile? branch)
		(mobile-balance? (branch-structure branch))
		#t))

;;; function test
(define balance-mobile (make-mobile (make-branch 10 10)
                                          (make-branch 10 10)))
(mobile-balance? balance-mobile)

(define unbalance-mobile (make-mobile (make-branch 0 0 )
										(make-branch 10 10)))
(mobile-balance? unbalance-mobile)

(define mobile-with-sub-mobile(make-mobile( make-branch 10 balance-mobile)
										(make-branch 10 balance-mobile)))
(mobile-balance? mobile-with-sub-mobile)