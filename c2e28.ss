;; fringe, or I think flatten is more accuracy.

(define (fringe x)
  (cond [(null? x) nil]
	[(not (pair? tree)) (list tree)]
	[else (append (fringe (car x))
		      (fringe (cdr x)))]))


	  
