
(define (same-parity x . xs)
    (define (same-parity-iter items res)
        (if (null? items)
            res
            (if [= (remainder x 2) (remainder (car items) 2)]
                [same-parity-iter (cdr items) (cons (car items) res)]
                [same-parity-iter (cdr items) res]
            )
        )
    )
    (cons x (my-reverse (same-parity-iter xs '())))
)
