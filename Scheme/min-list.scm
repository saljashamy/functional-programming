#lang scheme
(define (min_list a_list)
  (define (min_list_h a_list min)
    (cond
      ((null? a_list) (list min min))
      ((> min (car a_list))(min_list (cdr a_list) (car a_list)))
      (else (min_list (cdr a_list) min))
    )
  )
  (min_list_h a_list +inf.0) 
)

(min_max '(20.01824 -30.0198 40.1987 -50.0982 -9.1234 0.3456 1.4356 2.213))
(min_max '(20 -30 40 -50 -9 0 1 2))
(min_max '(0))
(min_max '())
