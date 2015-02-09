(define +
  (lambda(m)
    (lambda(n)
      (lambda(f)
	(lambda(x)
	  (m f (n f x)))))))
