(define dx 0.00001)
(define (smooth f)
  (lambda(x)
    (/(+ (f(- x dx))
	 (f x)
	 (f (+ x dx)))
      3)))

(define (smooth-n-times f n)
  (if (= n 0)
      f
      (smooth(smooth-n-times f (- n 1)))))
