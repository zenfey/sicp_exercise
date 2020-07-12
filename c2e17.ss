
(define (my-last-pair items)
    (define (my-last-pair-iter items last-items)
        (if (null? items)
            last-items
            (my-last-pair-iter (cdr items) items)
        )
    )
    (my-last-pair-iter items items)
)

; BUG.
; (last-pair '(a b . c)) -> (b . c)
; (my-last-pair '(a b . c)) -> error!.