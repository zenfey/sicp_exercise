;; fringe, or I think flatten is more accuracy.

(define (fringe x)
  (define (fringe-rev x)
    (define (fringe-iter items-remain items)
      (cond [(null? items-remain) items]
	    [(pair? (car items-remain)) (fringe-iter (cdr items-remain) (append (fringe-rev (car items-remain)) items))]
	    [else (fringe-iter (cdr items-remain) (cons (car items-remain) items))]
	    ))
    (fringe-iter x '())
    )
  (reverse (fringe-rev x)))

	  
