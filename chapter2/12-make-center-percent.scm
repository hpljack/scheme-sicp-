(load "7-define-interval.scm")
(define (make-center-percent n p)
  (make-interval (* n (- 1(/ p 100)))
		 (* n (+ 1(/ p 100)))))


(define (percent i)
 (* (/ (- (- (lower-bound i)(upper-bound i)))
     (+ (lower-bound i)(upper-bound i))) 100.0))

(define (center i)
  (/ (+ (lower-bound i)(upper-bound i)) 2))

;;; fuction test
(load "print-interval.scm")
(define x (make-center-percent 120 20))
(define y (make-center-percent 130 23))
(center x)
(center y)
(percent x)
(percent y)

