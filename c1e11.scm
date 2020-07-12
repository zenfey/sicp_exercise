

(define (f-tree n)
    (cond 
        ((= 0 n) 0)
        ((= 1 n) 1)
        ((= 2 n) 2)
        (else 
            (+ 
                (f-tree (- n 1)) 
                (* 2 (f-tree (- n 2)))
                (* 3 (f-tree (- n 3)))
            )
        )
          
    )
)

(define (f-line n)
    (define (next-num a b c)
        (+
            a
            (* 2 b)
            (* 3 c)
        )
    )
    (define (f-line-iter a b c counter)
        (if (= counter 2)
            a
            (f-line-iter (next-num a b c) a b (- counter 1))
        )
    )
    (cond
        ((= 0 n) 0)
        ((= 1 n) 1)
        ((= 2 n) 2)
        (else
            (f-line-iter 2 1 0 n)
        )
    )
)