(load "29-make-mobile-and-make-branch.scm")
(load "29-left-branch-and-right-branch.scm")
(load "29-branch-length-and-branch-structure.scm")

;;; function test
(define mobile (make-mobile (make-branch 10 25)
							(make-branch 5 20)))
(left-branch mobile)
(right-branch mobile)