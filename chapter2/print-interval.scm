(load "7-define-interval.scm")

(define (print-interval x)
  (display "(")
  (display (lower-bound x))
  (display "~")
  (display (upper-bound x))
  (display ")"))
