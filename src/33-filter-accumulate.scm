(define (filter-accumulate combine null-value term a next b valid?)
	(if (> a b)
		null-value
		(let ((rest-terms(filter-accumulate  combine
										   null-value
											term
											(next a)
											next
											b
											valid?)))
			(if (valid? a)
				(combine (term a) rest-terms)
					rest-terms))))