;; two mobiles

(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))



(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (car (cdr mobile)))


(define (branch-structure branch)
  (car (cdr branch)))

;; a) lenght of branch
(define (branch-length branch)
  (+ (car branch)
     (if (pair? (branch-structure branch))
	 (+ (branch-length (left-branch (branch-structure branch)))
	    (branch-length (right-branch (branch-structure branch))))
	 0)))

;; a) total weights of branch
(define (branch-weight branch)
  (if (pair? (branch-structure branch))
      (+ (branch-weight (left-branch (branch-structure branch)))
	 (branch-weight (right-branch (branch-structure branch))))
      (branch-structure branch)))

;; b) total weights of mobile
(define (total-weight mobile)
  (+ (branch-weight (left-branch mobile))
     (branch-weight (right-branch mobile))))

;; c) balance check of mobile
(define (branch-moment branch)
  (* (car branch) (branch-weight branch)))

(define (branch-is-balanced branch)
  (if (pair? (branch-structure branch))
      (and 
       (= (branch-moment (left-branch (branch-structure branch)))
	  (branch-moment (right-branch (branch-structure branch))))
       (branch-is-balanced (left-branch (branch-structure branch)))
       (branch-is-balanced (right-branch (branch-structure branch)))
       )
      #t))

(define (mobile-is-balanced mobile)
  (and (branch-is-balanced (left-branch mobile))
       (branch-is-balanced (right-branch mobile))
       (= (branch-moment (left-branch mobile))
	  (branch-moment (right-branch mobile)))
       ))

;; test cases
(define mobile-case (make-mobile (make-branch 1 (make-mobile (make-branch 3 5) (make-branch 4 6))) (make-branch 7 8)))
