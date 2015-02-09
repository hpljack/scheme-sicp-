(load "7-define-interval.scm")
(define (make-center-width c w)
  (make-interval (- c w)(+ c w)))

(define (center i)
  (/ (+ (lower-bound i)(upper-bound i)) 2))

(define (width i)
  (/ (- (upper-bound i)(lower-bound i)) 2))

;;; unit test
(define m (make-center-width 80 20))
(define n (make-center-width 101 15))
(load "print-interval.scm")
(print-interval m)
(print-interval n)

