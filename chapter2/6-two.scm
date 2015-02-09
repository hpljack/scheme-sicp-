(define two
  (lambda(f)
    (lambda(x)
      (f(f x)))));run f two times
