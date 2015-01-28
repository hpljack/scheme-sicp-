(define (next-odd n)
	(if (odd? n)
		(+ n 2)
		(+ n 1)))
	
(define (continue-primer n count)
	(cond ((= count 0)(display "are primers."))
		((prime? n) (display n) (newline)(continue-primer(next-odd n)(- count 1)))
		(else (continue-primer (next-odd n) count))))
		
(define (test-foo)
	(let((start-time(real-time-clock)))
		(foo)
		(- (real-time-clock) start-time)))
		
(define (search-for-primer n)
	(let ((start-time(real-time-clock)))
		(continue-primer n 3)
		(-(real-time-clock) start-time)))
		
(define (test-search-for-primer)
	(let ((start-time (real-time-clock)))
		(search-for-primer 1000000)
		(- (real-time-clock) start-time)))
		