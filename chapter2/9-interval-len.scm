(load "7-define-interval.scm")

(define (interval-len x)
  (/ (abs(- (lower-bound x)(upper-bound x))) 2))
