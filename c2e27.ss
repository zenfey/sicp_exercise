;; deep reverse


(define (deep-reverse items)
  (define (reverse-iter items-remain items)
    (cond [(null? items-remain) items]
	  [(pair? (car items-remain)) (reverse-iter (cdr items-remain) (cons (deep-reverse (car items-remain)) items))]
	  [else (reverse-iter (cdr items-remain) (cons (car items-remain) items))]
	  ))
  (reverse-iter items '())
  )
