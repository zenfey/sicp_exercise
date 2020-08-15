


(define (accumulate op init seq)
  (if (null? seq)
      init
      (op (car seq)
	  (accumulate op init (cdr seq)))))

;; using accumulate to impl map

(define (map2 proc seq)
  (accumulate
   (lambda (x y)
     (if (null? y)
	 (list (proc x))
	 (cons (proc x) y)
	 )
     )
   '()
   seq))

;; using accumulate to impl append

(define (append2 seq1 seq2)
  (accumulate
   cons
   seq2
   seq1
   ))

;; using accumulate to impl length

(define (length2 sequence)
  (accumulate (lambda (x y) (+ 1 y)) 0 sequence))
