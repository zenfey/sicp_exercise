;; count-leaves via acc

(define (fringe tree)
  (cond [(null? tree) '()]
	[(not (pair? tree)) (list tree)]
	[else (append (fringe (car tree))
		      (fringe (cdr tree)))]))

(define (count-leaves tree)
  (accumulate + 0 (map (lambda (x) 1) (fringe tree))))

