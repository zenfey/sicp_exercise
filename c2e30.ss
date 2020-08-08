;; square-tree

;; method via cons-car-cdr
(define (square-tree tree)
  (cond [(null? tree) '()]
	[(pair? tree) (cons (square-tree (car tree))
			    (square-tree (cdr tree)))]
	[else (* tree tree)]))

;; method via map
(define (square-tree-map tree)
  (map (lambda (sub-tree)
	 (if (pair? sub-tree)
	     (square-tree-map sub-tree)
	     (* sub-tree sub-tree)))
       tree))
