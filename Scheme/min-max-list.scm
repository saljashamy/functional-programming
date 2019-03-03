(define (min_max a_list)
  (define (min_max_h a_list minv maxv)
    (cond 
      ((null? a_list) (list minv maxv))
      ((and (> minv (car a_list)) (< maxv (car a_list)))(min_max_h (cdr a_list) (car a_list) (car a_list)))
      ((> minv (car a_list))(min_max_h (cdr a_list) (car a_list) maxv))
      ((< maxv (car a_list))(min_max_h (cdr a_list) minv (car a_list)))
      (else (min_max_h (cdr a_list) minv maxv))
    )
  )
  (min_max_h a_list +inf.0 -inf.0)
)

(min_max '(20.01824 -30.0198 40.1987 -50.0982 -9.1234 0.3456 1.4356 2.213))
(min_max '(20 -30 40 -50 -9 0 1 2))
(min_max '(0))
(min_max '())

