
(define (my-reverse items)
    (define (reverse-iter items-remain items)
        (if (null? items-remain) 
            items
            (reverse-iter  (cdr items-remain)  (cons (car items-remain) items))
        )
    )
    (reverse-iter items '())
)