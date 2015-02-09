(load "interval.scm")
(load "7-define-interval.scm")
(load "print-interval.scm")

;;;function test
(define x (make-interval 2 5))
(define y (make-interval 3 8))
(print-interval x)
(print-interval y)
(print-interval (add-interval x y))
(print-interval (muli-interval x y))
(print-interval (div-interval x y))
;;; sub-interval test
(load "8-sub-interval.scm")
(print-interval (sub-interval x y))
;;; interval-len test
(load "9-interval-len.scm")
(interval-len x)
(interval-len(add-interval x y))
(interval-len(sub-interval x y))
