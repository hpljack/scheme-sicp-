(load "44-smooth.scm")
(load "43-repeated.scm")

(define (smooth-n-times f n)
  (let ((n-times-smooth(repeated smooth n)))
    (n-times-smooth f)))
