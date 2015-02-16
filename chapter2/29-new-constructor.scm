(define (make-mobile left right)
	(cons left right))
(define (make-branch length structure)
	(cons length structure))
	
	
;;; function test
;(load "29-mobile-balance.scm")
;(load "29-new-selector.scm")

(define mobile (make-mobile (make-branch 10 20)
							(make-branch 20 20)))
;(mobile-balance? mobile)