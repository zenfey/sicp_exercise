;; subsets proc


(define (subsets s)
  (if (null? s)
      (list '())
      (let ((rest (subsets (cdr s))))
	(append rest (map (lambda (tree) (cons (car s) tree)) rest)))))
