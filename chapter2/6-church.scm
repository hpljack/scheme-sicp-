(define zero
  (lambda(f)
    (lambda(x)
      x))) ;did not run f
(define (add-1 n)
  (lambda(f)(lambda(x)(f((n f)x)))))
